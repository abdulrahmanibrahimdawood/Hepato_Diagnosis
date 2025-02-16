import 'dart:developer';
import 'package:e_commerce/core/errors/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  Future<User?> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthService.createUserWithEmailAndPassword ${e.toString()} and code ${e.code}');
      if (e.code == 'weak-password') {
        throw CustomExceptions(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomExceptions(
            message: 'The account already exists for that email.');
      } else if (e.code == 'network-request-failed') {
        throw CustomExceptions(
            message:
                'No internet connection. Please check your internet connection and try again.');
      } else {
        throw CustomExceptions(message: 'An error occured. Please try again.');
      }
    } catch (e) {
      log('Exception in FirebaseAuthService.createUserWithEmailAndPassword ${e.toString()}');

      throw CustomExceptions(
          message: 'An error occured. Please try again later.');
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthService.createUserWithEmailAndPassword ${e.toString()} and code ${e.code}');
      if (e.code == 'user-not-found') {
        throw CustomExceptions(message: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw CustomExceptions(
            message: 'Wrong password provided for that user.');
      } else if (e.code == 'network-request-failed') {
        throw CustomExceptions(
            message:
                'No internet connection. Please check your internet connection and try again.');
      } else {
        throw CustomExceptions(message: 'An error occured. Please try again.');
      }
    } catch (e) {
      log('Exception in FirebaseAuthService.createUserWithEmailAndPassword ${e.toString()}');
      throw CustomExceptions(
          message: 'An error occured. Please try again later.');
    }
  }
}
