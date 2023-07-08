import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:grabber/core/failures.dart';
import 'package:grabber/failures/auth_failures.dart';
import 'package:grabber/generated/l10n.dart';

class AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
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

  Future<Option<Failure>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      return some(FirebaseUserNotFoundedFailure());
    }
    return none();
  }

  Future<bool> emailIsAlreadyInUse({
    required String email,
  }) async {
    try {
      final singInMethod =
          await _firebaseAuth.fetchSignInMethodsForEmail(email);
      if (singInMethod.isNotEmpty) {
        return true;
      }
    } catch (e) {
      return true;
    }
    return false;
  }

  Future<Option<Failure>> resetPassword({
    required String email,
  }) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (e) {
      return some(FirebaseUserNotFoundedFailure());
    }
    return none();
  }
}
