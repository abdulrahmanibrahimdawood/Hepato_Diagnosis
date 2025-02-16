import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/exceptions.dart';
import 'package:e_commerce/core/errors/failuer.dart';
import 'package:e_commerce/core/services/firebase_auth_service.dart';
import 'package:e_commerce/features/auth/data/models/user_model.dart';
import 'package:e_commerce/features/auth/domain/entites/user_entity.dart';
import 'package:e_commerce/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failuer, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFirebaseUser(user!));
    } on CustomExceptions catch (e) {
      return left(ServerFailuer(message: e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword ${e.toString()}');
      return left(
          ServerFailuer(message: 'An error occured. Please try again later.'));
    }
  }

  @override
  Future<Either<Failuer, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFirebaseUser(user));
    } on CustomExceptions catch (e) {
      return left(ServerFailuer(message: e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword ${e.toString()}');
      return left(
          ServerFailuer(message: 'An error occured. Please try again later.'));
    }
  }
}
