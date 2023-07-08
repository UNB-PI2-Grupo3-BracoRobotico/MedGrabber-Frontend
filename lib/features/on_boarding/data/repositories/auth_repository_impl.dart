import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:grabber/core/failures.dart';
import 'package:grabber/failures/auth_failures.dart';
import 'package:grabber/features/on_boarding/domain/entities/stockist.dart';
import 'package:grabber/features/on_boarding/domain/repository/auth_repository.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<Option<Failure>> signUp({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return const None();
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return Some(
          UnhandledFailure(
            message:
                S.current.on_boarding_email_page_error_bottomsheet_description,
          ),
        );
      }
      rethrow;
    } catch (e) {
      return Some(
        UnhandledFailure(
          message: e.toString(),
        ),
      );
    }
  }

  @override
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

  @override
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

  @override
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

  @override
  Option<Stockist> getSignedUser() {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser != null) {
      return Some(
        Stockist(
          id: firebaseUser.uid,
        ),
      );
    }
    return const None();
  }

  @override
  Future<void> signOutUser() async {
    await _firebaseAuth.signOut();
  }
}
