import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:grabber/core/failures.dart';
import 'package:grabber/failures/auth_failures.dart';
import 'package:grabber/features/on_boarding/data/datasources/auth_datasource.dart';
import 'package:grabber/features/on_boarding/data/models/user_creation_body_model.dart';
import 'package:grabber/features/on_boarding/domain/entities/stockist.dart';
import 'package:grabber/features/on_boarding/domain/repository/auth_repository.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;
  final AuthDatasource datasource;

  AuthRepositoryImpl({required this.datasource});

  @override
  Future<Either<Failure, Stockist>> signUp({
    required String token,
    required String email,
    required String password,
    required String phoneNumber,
  }) async {
    final random = Random();
    final randomInt = random.nextInt(1000000) + 1;
    try {
      final firebaseUser = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (firebaseUser.user == null) {
        return const Left(UnhandledFailure());
      }
      //TODO(Mauricio): Check with backend to stop mocking this informations
      await datasource.createUser(
        user: UserCreationBodyModel(
          username: 'Usuário teste $randomInt',
          passwordHash: password,
          email: email,
          storeName: 'Nome de loja mockado',
          personalName: 'Nome próprio mockado',
          machineSerialNumber: token,
          phoneNumber: phoneNumber,
          userRole: 'stock_manager',
        ),
      );
      return Right(
        Stockist(
          id: firebaseUser.user?.uid ?? '',
          email: email,
          phoneNumber: phoneNumber,
          storeName: 'Nome de loja mockado $randomInt',
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        //TODO(Mauricio): Check if user is created at backend - If not try to create it
        final stockist = getSignedUser();
        final Stockist user = stockist.fold(
          Stockist.createEmptyInstance,
          (user) => user,
        );
        if (user.id.isNotEmpty) {
          final userId = stockist.fold(
            () => '',
            (user) => user.id,
          );
          await datasource.createUser(
            user: UserCreationBodyModel(
              username: 'Usuário teste $randomInt',
              passwordHash: password,
              email: email,
              storeName: 'Nome de loja mockado',
              personalName: 'Nome próprio mockado',
              machineSerialNumber: token,
              phoneNumber: phoneNumber,
              userRole: 'stock_manager',
            ),
          );
          return Right(
            Stockist(
              id: userId,
              email: email,
              phoneNumber: phoneNumber,
              storeName: 'Nome de loja mockado $randomInt',
            ),
          );
        }
        return Left(
          UnhandledFailure(
            message:
                S.current.on_boarding_email_page_error_bottomsheet_description,
          ),
        );
      }
      rethrow;
    } catch (e) {
      return Left(
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
      //TODO(Mauricio): get user info on db and populate here
      return Some(
        Stockist(
          id: firebaseUser.uid,
          email: '',
          storeName: '',
          phoneNumber: '',
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
