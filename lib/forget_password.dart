import 'package:flutter/material.dart';
import 'reset_password.dart';


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
                      "Forgot Password",
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

               TextField(
               decoration: InputDecoration(
               hintText: "Email",
               prefixIcon: const Icon(Icons.email),
                enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
               ),
                focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2),
               ),
               ),
              ),

              const SizedBox(height: 20), 

                SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResetPassword()),
                      );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  const Color(0xffEEA734),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  
                  child: const Text(
                    "RESET PASSWORD",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    )
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
