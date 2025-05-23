import 'package:dartz/dartz.dart';

import 'package:liver_diagnosis/core/errors/failuer.dart';
import 'package:liver_diagnosis/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);

  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
      String email, String password);

  Future<Either<Failure, UserEntity>> signinWithGoogle();
  Future<Either<Failure, UserEntity>> signinWithFacebook();
  Future<Either<Failure, UserEntity>> signinWithApple();
}
