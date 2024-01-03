import 'package:flutter/material.dart';
import 'package:mastering_api_with_flutter/widgets/cutom_text_form_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormField(
                hint: "Email",
                controller: TextEditingController(),
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                hint: "Password",
                controller: TextEditingController(),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Sign In"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
