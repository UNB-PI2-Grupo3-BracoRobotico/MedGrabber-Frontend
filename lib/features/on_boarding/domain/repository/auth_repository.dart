import 'package:firebase_auth/firebase_auth.dart';
import 'package:grabber/generated/l10n.dart';

class AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    try {
      _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        throw Exception(
            S.current.on_boarding_email_page_error_bottomsheet_description);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> emailIsAlreadyInUse({
    required String email,
  }) async {
    try {
      await _firebaseAuth.fetchSignInMethodsForEmail(email);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> resetPassword({
    required String email,
  }) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
