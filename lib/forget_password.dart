import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top header
              SizedBox(
                height: 56,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ),
                    const Text(
                      "Forget Password",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Page content title / subtitle
              const Text(
                "Forgot password",
                style: TextStyle(
                  fontSize: 25,
                  
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Enter your email address below to receive a password reset link.",
                style :TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                )
              ),

              const SizedBox(height: 40),

            ],
          ),
        ),
      ),
    );
  }
}
