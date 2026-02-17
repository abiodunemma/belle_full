import 'package:flutter/material.dart';

class PaartnersScreeen extends StatefulWidget {
  const PaartnersScreeen({super.key});

  @override
  State<PaartnersScreeen> createState() => _PaartnersScreeenState();
}

class _PaartnersScreeenState extends State<PaartnersScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                        icon: const Icon(Icons.arrow_back_ios)
                      ),
                    ),
                    const Text(
                      "Featured Partners",
                      style: TextStyle(
                        fontSize: 18,
                         fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                  
                ),
              ),
             const  SizedBox(height: 10),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/images/plate1.png",
                    width: 150,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                )
              ],
             )

            ],
          ),
        ),
        ),
      ),
    );
  }
}
