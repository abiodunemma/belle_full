import 'package:flutter/material.dart';
import 'otp_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              // 🔝 Back icon + centered login text (same level)
              Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  const Text(
                    "Login to Tamang Food",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 1),

              //  Services text (different line)
              const Text(
                "Services",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 30),

              //  Get started section
              const Text(
                "Get started with Tamang Food",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              //decription
              const Text(
                "Enter your phone number to use foodly and enjoy your food :)",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 40),

              //phone number field
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border : Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(children: [
                  const Text(
                      "🇳🇬 +234",
                      style: TextStyle(fontSize: 16),
                    ),
                    
                    const SizedBox(width: 10),

                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          hintText: "Phone number",
                          border: InputBorder.none,
                        ),
                      ),
                       ),
                ],
                ),
              ),

                    const SizedBox(height: 90),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => OTPScreen()),
  );
},
                  style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffEEA734),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    )
                    ),
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
