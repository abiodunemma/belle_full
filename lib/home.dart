import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
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
                      "Delivery to",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xffEEA734),
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "HayStreet, Perth",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        size: 24,
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: const Text(
                      "Filter",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),

                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 10),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  const SizedBox(height: 16),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/images/plain.png",
                      // "assets/images/onbaording1.png",
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                )
              ),
            ],
        ),
      ),
      ),
    );
  }
}