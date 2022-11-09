import 'package:canteen_system/providers/bottom_navigation_bar.dart';
import 'package:canteen_system/screens/complaint_page/Components/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/src/provider.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../helper/enums.dart';

class Authentication with ChangeNotifier {
  late FirebaseAuth _auth;
  Status _status = Status.Uninitialized;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  Status get status => _status;
  late User _user;
  late BuildContext _context;
  var firebaseFirestore = FirebaseFirestore.instance;

  set setStatus(Status stat) {
    _status = stat;
    notifyListeners();
  }

  set setBuildContext(BuildContext context) {
    _context = context;
  }

  User get user => _user;

  Authentication.instance() : _auth = FirebaseAuth.instance {
    _auth.authStateChanges().listen(_onAuthStateChanged);
  }

  Future signOut() async {
    Provider.of<BottomNavigationBarProvider>(_context, listen: false)
        .toggleTabs(0);
    _auth.signOut();
    _status = Status.Unauthenticated;
    notifyListeners();
  }

  Future<String> signInAccount(String email, String password) async {
    _status = Status.Authenticating;
    notifyListeners();
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return "Success";
    } on FirebaseAuthException catch (e) {
      _status = Status.Unauthenticated;
      notifyListeners();
      return e.message.toString();
    }
  }

  Future<bool> signUpAccount(String email, String password, String name) async {
    _status = Status.Authenticating;
    notifyListeners();
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      await firebaseFirestore
          .collection("users")
          .doc(userCredential.user?.uid)
          .set({
        "name": name,
        "email": email,
        "id": userCredential.user?.uid,
        "role": "customer"
      });
      return true;
    } catch (e) {
      _status = Status.Unauthenticated;
      notifyListeners();

      return false;
    }
  }

  Future<String> logInWithGoogle() async {
    // final temp = deepLinkRepo?.referrerCode.value ?? '';
    // print(temp);
    try {
      _status = Status.Authenticating;
      notifyListeners();
      final googleUser = await _googleSignIn.signIn();

      final googleAuth = await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      var doc = await firebaseFirestore
          .collection("users")
          .doc(userCredential.user?.uid)
          .get();
      if (!doc.exists) {
        await firebaseFirestore
            .collection("users")
            .doc(userCredential.user?.uid)
            .set({
          "name": userCredential.user?.displayName,
          "email": userCredential.user?.email,
          "id": userCredential.user?.uid,
          "role": "customer"
        });
      }

      return "Success";
    } catch (e) {
      _status = Status.Unauthenticated;
      notifyListeners();
      return e.toString();
    }
  }

  Future<String> forgetPassword({
    required String email,
    required BuildContext context,
  }) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return "Success";
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    } catch (e) {
      return e.toString();
    }
  }

  void _onAuthStateChanged(User? firebaseUser) async {
    if (firebaseUser == null) {
      _status = Status.Unauthenticated;
    } else {
      _user = firebaseUser;
      _status = Status.Fetching;
    }

    notifyListeners();
    return;
  }
}
