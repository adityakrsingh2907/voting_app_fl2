// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../models/user_model.dart';
import '../../../utils/show_snack_bar.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  UserModel? _userFromFirebaseUser(User? user) {
    return user != null
        ? UserModel(
            uid: user.uid,
            email: user.email ?? '',
            displayName: user.displayName ?? '',
          )
        : null;
  }

  CollectionReference get _users => _firestore.collection('users');
  Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  // Sign in with Google
  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      if (googleAuth?.accessToken != null && googleAuth?.idToken != null) {
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );

        UserCredential userCredential = await _auth.signInWithCredential(credential);
        UserModel userModel;

        if (userCredential.additionalUserInfo!.isNewUser) {
          userModel = UserModel(
            displayName: userCredential.user!.displayName ?? 'No Name',
            email: userCredential.user!.email ?? '',
            uid: userCredential.user!.uid,
          );
          await _users.doc(userCredential.user!.uid).set(userModel.toMap());
        } else {
          userModel = await getUserData(userCredential.user!.uid).first;
        }
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

  Stream<UserModel> getUserData(String uid) {
    return _users
        .doc(uid)
        .snapshots()
        .map((event) => UserModel.fromMap(event.data() as Map<String, dynamic>));
  }

  // Sign out
  Future signOut(BuildContext context) async {
    try {
      return await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }
}
