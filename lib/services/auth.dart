import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/domain/user.dart';

class AuthService {
  final FirebaseAuth _fAuth = FirebaseAuth.instance;

  Future<UserId> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await _fAuth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return UserId.fromFirebase(user);
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<UserId> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await _fAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return UserId.fromFirebase(user);
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future logOut() async {
    await _fAuth.signOut();
  }

  Stream<UserId> get currentUser {
    return _fAuth
        .authStateChanges()
        .map((User user) => user != null ? UserId.fromFirebase(user) : null);
  }
}
