import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codificando/models/system_model.dart';
import 'package:codificando/widgets/rankingList.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:scoped_model/scoped_model.dart';

class UserModel extends Model {
  bool isLoading = false;
  bool rankIsLoading = true;

  List<List<Map<int, String>>>? ranking;

  Map<String, dynamic> userData = {};

  final GoogleSignIn googleSignIn = GoogleSignIn();

  void signInGoogle(
      {
      //Cadastro com o google
      VoidCallback? onSuccessSignIn,
      VoidCallback? onSuccessSignUp,
      required VoidCallback onFail,
      required int type}) async {
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

      if (type == 0) {
        userData = {
          "name": FirebaseAuth.instance.currentUser?.displayName,
          "email": FirebaseAuth.instance.currentUser?.email,
          "points": 0,
          "cPoints": 0,
        };
        _saveUserData(userData);
        if (onSuccessSignUp != null) {
          onSuccessSignUp();
        }
      } else {
        _loadCurrentUser();
        if (onSuccessSignIn != null) {
          onSuccessSignIn();
        }
      }
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

      userData = {
        "name": userData["name"],
        "email": userData["email"],
        "points": 0,
        "cPoints": 0,
      };
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
      userData = {
        "name": docUser.get("name"),
        "email": docUser.get("email"),
        "points": docUser.get("points"),
        "cPoints": docUser.get("cPoints")
      };
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

  dynamic getInfo(int type) {
    switch (type) {
      case 0:
        {
          if (userData["name"] == null) {
            return "Name";
          } else {
            return userData["name"];
          }
        }
      case 1:
        {
          if (userData["points"] == null) {
            return 0;
          } else {
            return userData["points"];
          }
        }
      case 2:
        {
          if (userData["cPoints"] == null) {
            return 0;
          } else {
            return userData["cPoints"];
          }
        }
    }
  }

  Widget listRanking(classe) {
    if (rankIsLoading == true && ranking == null) {
      getAll();
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      if (classe == 0) {
        return RankingList(
          people: ranking![0],
          cor: Colors.green,
        );
      } else if (classe == 1) {
        return RankingList(
          people: ranking![1],
          cor: Colors.blue,
        );
      } else {
        return const SizedBox();
      }
    }
  }

  void getAll() async {
    CollectionReference<Map<String, dynamic>> users =
        FirebaseFirestore.instance.collection('users');
    QuerySnapshot<Map<String, dynamic>> usersData = await users.get();

    List<QueryDocumentSnapshot<Map<String, dynamic>>> all = usersData.docs;
    int cont = all.length;
    List<Map<int, String>> master = [];
    List<Map<int, String>> senior = [];
    List<Map<int, String>> pleno = [];
    List<Map<int, String>> junior = [];

    for (int i = 0; i <= cont - 1; i++) {
      String nome = "";
      int pont = -1;
      all[i].data().forEach((key, value) {
        if (key == "name") {
          nome = value.toString();
        }
        if (key == "cPoints") {
          pont = value;
        }
      });
      if (pont != -1 && nome != "") {
        if (pont < 1) {
          junior.add({pont: nome});
        } else if (pont < 2) {
          pleno.add({pont: nome});
        }
      }
    }

    ranking = [junior, pleno, senior, master];
    rankIsLoading = false;
    notifyListeners();
  }

  Widget myClasse() {
    if (userData["cPoints"] != null) {
      if (userData["cPoints"] < 1) {
        return const Text(
          'Junior',
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'upheavtt',
            color: Colors.black,
          ),
        );
      } else if (userData["cPoints"] < 2) {
        return const Text(
          'Pleno',
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'upheavtt',
            color: Colors.black,
          ),
        );
      } else if (userData["cPoints"] < 3) {
        return const Text(
          'Senior',
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'upheavtt',
            color: Colors.black,
          ),
        );
      } else {
        return const Text(
          'Master',
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'upheavtt',
            color: Colors.black,
          ),
        );
      }
    } else {
      return const Text(
        'Classe',
        style: TextStyle(
          fontSize: 15,
          fontFamily: 'upheavtt',
          color: Colors.black,
        ),
      );
    }
  }

  void logout() {
    FirebaseAuth.instance.signOut();
    googleSignIn.disconnect();
    userData = {};
    notifyListeners();
  }

  void updateInfo({int? points, int? cPoints}) {
    if (userData != {}) {
      userData = {
        "name": userData['name'],
        "email": userData['email'],
        "points": points,
        "cPoints": cPoints
      };
      _saveUserData(userData);
      _loadCurrentUser();
      rankIsLoading = true;
      ranking = null;
      notifyListeners();
    }
  }
}
