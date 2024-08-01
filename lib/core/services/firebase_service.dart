import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:finance_app/core/models/firebase_user.dart';
import 'package:finance_app/common/constants/firebase_constants.dart';

class FirebaseService {
  final CollectionReference _usersCollectionReference = FirebaseFirestore
      .instance
      .collection(FirebaseConstants.FIRESTORE_USERS_PATH);
  String? userId;
  FirebaseUser? user;
  bool isAnonymousUser = false;

  init() {}

  Future<bool> signIn(String email, String password) async {
    try {
      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      userId = userCredential.user?.uid;
      user = await getUser(email);
      isAnonymousUser = false;
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> signInAnonymously() async {
    try {
      await FirebaseAuth.instance.signInAnonymously();
      isAnonymousUser = true;
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> signUp(
      String name, String surname, String email, String password) async {
    try {
      FirebaseUser user =
          FirebaseUser(name: name, surname: surname, email: email);
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      await _usersCollectionReference.add(user.toJson());
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      user = null;
      isAnonymousUser = false;
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<FirebaseUser> getUser(String email) async {
    var result =
        await _usersCollectionReference.where('email', isEqualTo: email).get();
    return FirebaseUser.fromJson(
        result.docs.first.data() as Map<String, dynamic>);
  }
}
