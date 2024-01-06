import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastering_api_with_flutter/core/utils/toast.dart';
import 'package:mastering_api_with_flutter/cubit/user_cubit.dart';
import 'package:mastering_api_with_flutter/cubit/user_state.dart';
import 'package:mastering_api_with_flutter/widgets/cutom_text_form_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<UserCubit, UserState>(
        listener: (context, state) {
          if (state is SignInSuccess) {
            showToast(
              context: context,
              messege: "Sign in success",
              state: ToastStates.success,
            );
          } else if (state is SignInFailure) {
            showToast(
              context: context,
              messege: state.errMessage,
              state: ToastStates.error,
            );
          }
        },
        builder: (context, state) {
          return state is SignInLoading
              ? const CircularProgressIndicator()
              : Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //!Email
                        CustomTextFormField(
                          hint: "Email",
                          controller:
                              context.read<UserCubit>().singInEmailController,
                        ),
                        const SizedBox(height: 16),
                        //!Password
                        CustomTextFormField(
                          hint: "Password",
                          controller: context
                              .read<UserCubit>()
                              .singInPasswordController,
                        ),
                        const SizedBox(height: 16),
                        //! Sign in Button
                        ElevatedButton(
                          onPressed: () {
                            context.read<UserCubit>().signIn();
                          },
                          child: const Text("Sign In"),
                        ),
                        const SizedBox(height: 16),
                        //! Don't have an account? Sign Up
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Don't have an account? Sign Up"),
                        )
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }
}
