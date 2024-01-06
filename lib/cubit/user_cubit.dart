import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastering_api_with_flutter/cubit/user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  //! Sign in variabls
  GlobalKey<FormState> signInFormkey = GlobalKey();
  TextEditingController singInEmailController = TextEditingController();
  TextEditingController singInPasswordController = TextEditingController();

  //! Sign Up variabls
  GlobalKey<FormState> signUpFormkey = GlobalKey();
  TextEditingController singUpNameController = TextEditingController();
  TextEditingController singUpPhoneController = TextEditingController();
  TextEditingController singUpEmailController = TextEditingController();
  TextEditingController singUpPasswordController = TextEditingController();
  TextEditingController singUpConfirmPasswordController =
      TextEditingController();
  TextEditingController singUpLocationController = TextEditingController();

  //!Sign In
  Future<void> signIn() async {
    try {
      emit(SignInLoading());
      final respone = await Dio().post(
        "https://food-api-omega.vercel.app/api/v1/user/signin",
        data: {
          "email": singInEmailController.text,
          "password": singInPasswordController.text,
        },
      );
      print('&&&&&&&&&&&&&&&&&&&&&&&$respone');
      emit(SignInSuccess());
    } catch (e) {
      emit(SignInFailure(errMessage: e.toString()));
    }
  }
}
