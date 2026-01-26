import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                      alignment:
                       Alignment.centerLeft,
                       child: IconButton (
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
              )
              ),
              const SizedBox(height: 24),
              // Page content title / subtitle

              const Text(
                "Reset email sent",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Please check your email for a link to reset your password.",
                style :TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
               Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: ()  {},
                      child: const Text("Having problem "),
                    ),
                  ),

                  const SizedBox(height: 40),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  const Color(0xffEEA734),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text(
                        "SEND AGAIN",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ),
                  const SizedBox(height: 34),

const SizedBox(height: 40),
Center(
  child: Image.asset(
    "assets/images/onbaording1.png",
    height: 250, // adjust as needed
    fit: BoxFit.contain,
  ),
),
const SizedBox(height: 24)
            ],
                
           
          ),
          
        ),
        
      ),
    );
  }
}
