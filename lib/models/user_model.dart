import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:firebase_core/firebase_core.dart';

class UserModel extends Model {
  bool isLoading = false;

  Map<String, dynamic> userData = Map();

  Future<void> signUp(
      {required Map<String, dynamic> userData,
      required String pass,
      required VoidCallback onSuccess,
      required VoidCallback onFail,
      required VoidCallback onFailEmail}) async {
    Firebase.initializeApp();
    isLoading = true;
    notifyListeners();
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: userData["email"], password: pass);
      onSuccess();
      isLoading = false;
      notifyListeners();
      await _saveUserData(userData);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        onFail();
        isLoading = false;
        notifyListeners();
      } else if (e.code == 'email-already-in-use') {
        onFailEmail();
        isLoading = false;
        notifyListeners();
      }
    } catch (e) {
      onFail();
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signIn() async {
    isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 3));
    isLoading = false;
    notifyListeners();
  }

  void recoverPass() {}

  bool isLogedIn() {
    return true;
  }

  Future<Null> _saveUserData(Map<String, dynamic> userData) async {
    this.userData = userData;
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      await FirebaseFirestore.instance
          .collection("users")
          .doc(user.uid)
          .set(userData);
    }
  }
}
