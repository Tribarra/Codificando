import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codificando/models/system_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:scoped_model/scoped_model.dart';

class UserModel extends Model {
  bool isLoading = false;

  Map<String, dynamic> userData = {};

  final GoogleSignIn googleSignIn = GoogleSignIn();

  void signInGoogle({
    //Cadastro com o google
    required VoidCallback onSuccess,
    required VoidCallback onFail,
  }) async {
    isLoading = true;
    notifyListeners();
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      final GoogleSignInAuthentication? googleSignInAuthentication =
          await googleSignInAccount?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication?.idToken,
          accessToken: googleSignInAuthentication?.accessToken);

      await FirebaseAuth.instance.signInWithCredential(credential);
      userData = {
        "name": FirebaseAuth.instance.currentUser?.displayName,
        "email": FirebaseAuth.instance.currentUser?.email
      };
      _saveUserData(userData);
      onSuccess();
    } catch (e) {
      onFail();
    }
    isLoading = false;
    notifyListeners();
  }

  Future<void> signUp(
      {required Map<String, dynamic> userData,
      required String pass,
      required VoidCallback onSuccess,
      required VoidCallback onFail,
      required VoidCallback onFailEmail}) async {
    isLoading = true;
    notifyListeners();

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: userData["email"], password: pass);
      onSuccess();

      await _saveUserData(userData);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        onFail();
      } else if (e.code == 'email-already-in-use') {
        onFailEmail();
      }
    } catch (e) {
      onFail();
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> signIn({
    required String email,
    required String pass,
    required VoidCallback onSuccess,
    required VoidCallback onFailInfo,
    required VoidCallback onFail,
  }) async {
    isLoading = true;
    notifyListeners();
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: pass);
      await _loadCurrentUser();
      onSuccess();
      isLoading = false;
      notifyListeners();
    } on FirebaseAuthException {
      onFailInfo();
      isLoading = false;
      notifyListeners();
    } catch (e) {
      onFail();
      isLoading = false;
      notifyListeners();
    }

    isLoading = false;
    notifyListeners();
  }

  void recoverPass(String email) {
    FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  bool isLogedIn() {
    return true;
  }

  Future<void> _saveUserData(Map<String, dynamic> userData) async {
    this.userData = userData;
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      await FirebaseFirestore.instance
          .collection("users")
          .doc(user.uid)
          .set(userData);
    }
  }

  Future<void> _loadCurrentUser() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      DocumentSnapshot docUser = await FirebaseFirestore.instance
          .collection("users")
          .doc(user.uid)
          .get(const GetOptions());
      userData = {"name": docUser.get("name"), "email": docUser.get("email")};
    }
    notifyListeners();
  }

  Future<void> conectTest(
      {required VoidCallback netSucess, required VoidCallback netFail}) async {
    bool? state;
    isLoading = true;
    notifyListeners();
    state = await SystemModel().conectionTest();
    await Future.delayed(const Duration(seconds: 1)).then((value) {
      if (state == false) {
        netFail();
      } else {
        netSucess();
      }
    });
    isLoading = false;
    notifyListeners();
  }
}
