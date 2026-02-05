import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';



class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                    "Login to Foodly",
                    style: TextStyle(
                      fontSize: 18,
                     
                    )

                  )
                ],
              ),
              const SizedBox(height: 20),

              const Text(
                "Verify phone number",
                style: TextStyle(
                  fontSize: 22,
                   fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 10),

              Center(
  child: const Text(
    "Enter the 4-Digit code sent to you at +610489632578",
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 14,
      color: Colors.black54,
    ),
  ),
),

    const SizedBox(height: 30),

    PinCodeTextField(
      appContext: context,
      length: 4,
      keyboardType: TextInputType.number,
      autoFocus: true,
      animationType: AnimationType.fade,

      pinTheme: PinTheme(
        shape: PinCodeFieldShape.underline, 
        fieldHeight: 50,
        fieldWidth: 40,
        activeColor: Colors.black,
        inactiveColor: Colors.grey,
        selectedColor: Colors.blue,
      ),

      onChanged: (value) {},

      onCompleted: (value) {
        print("OTP Entered: $value");
      },
    ),
                    const SizedBox(height: 30),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {                     
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffEEA734),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: const Text(
                          "Continue",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          )
                        
                        ),
                      )
                    ),

                    const SizedBox(height: 15),

                    Center(
  child: RichText(
    textAlign: TextAlign.center,
    text: const TextSpan(
      style: TextStyle(
        fontSize: 14,
        color: Colors.black54,
      ),
      children: [
        TextSpan(
          text: "Didn’t receive code?",
        ),
        TextSpan(
          text: "Resend Again.",
          style: TextStyle(
            color: Color(0xffEEA734),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ),
),

                    const SizedBox(height: 25),

                                     Center(
  child: const Text(
    "By Signing up you agree to our Terms ",
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 14,
      color: Colors.black54,
    ),
  ),
),
                    
                      Center(
  child: const Text(
    "Conditions & Privacy Policy.",
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 14,
      color: Colors.black54,
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
