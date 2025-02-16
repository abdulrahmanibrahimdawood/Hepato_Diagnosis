import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failuer.dart';
import 'package:e_commerce/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failuer, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);

  Future<Either<Failuer, UserEntity>> signInWithEmailAndPassword(
      String email, String password);
}
