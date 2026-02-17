import 'package:flutter/material.dart';

class PartnersScreeen extends StatefulWidget {
  const PartnersScreeen({super.key});

  @override
  State<PartnersScreeen> createState() => _PartnersScreeenState();
}

class _PartnersScreeenState extends State<PartnersScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                      "Featured Partners"
                      
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
