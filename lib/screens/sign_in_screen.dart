import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(),
          const SizedBox(height: 16),
          TextFormField(),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Sign In"),
          )
        ],
      )),
    );
  }
}
