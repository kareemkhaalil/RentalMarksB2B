import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:rental_marks_business/screens/auth/sign_in.dart';
import 'package:rental_marks_business/screens/auth/sign_up.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  final TextEditingController? passwordController = TextEditingController();
  final TextEditingController? userNameController = TextEditingController();
  final TextEditingController? emailController = TextEditingController();

  bool obs = true;

  changeObs() {
    if (obs) {
      obs = !obs;
      emit(AuthObsShow());
    } else {
      obs = !obs;
      emit(AuthObsHide());
    }
  }

  goToSignUp(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUp(),
      ),
    );
    emit(AuthGoToSignUp());
  }

  goToSignIn(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignIn(),
      ),
    );
    emit(AuthGoToSignIn());
  }
}
