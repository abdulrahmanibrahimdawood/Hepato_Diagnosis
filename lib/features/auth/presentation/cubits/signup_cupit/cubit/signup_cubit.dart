import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liver_diagnosis/features/auth/data/repos/auth_repo.dart';
import 'package:liver_diagnosis/features/auth/domain/entites/user_entity.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    emit(SignupLoading());
    final result =
        await authRepo.createUserWithEmailAndPassword(email, password, name);
    result.fold((failuer) => emit(SignupFailure(message: failuer.message)),
        (userEntity) => emit(SignupSuccess(userEntity: userEntity)));
  }
}
