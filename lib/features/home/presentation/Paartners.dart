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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// 🔹 Header
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
                          icon: const Icon(Icons.arrow_back_ios),
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

                const SizedBox(height: 20),

                /// 🔹 Partners Row
                Row(
                  children: [
                    Expanded(
                      child: buildPartnerCard(
                        image: "assets/images/plate1.png",
                        title: "Tacos Nanchas",
                        subtitle: "Free delivery",
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: buildPartnerCard(
                        image: "assets/images/plate2.png",
                        title: "Mario Italiano",
                        subtitle: "15 min • Pay",
                        showRating: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

 
  Widget buildPartnerCard({
    required String image,
    required String title,
    required String subtitle,
    bool showRating = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            image,
            width: double.infinity, // important for responsiveness
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),

        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 4),

        if (showRating)
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
               
                child: const Text(
                  "4.8",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  subtitle,
                  style: const TextStyle(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        else
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
      ],
    );
  }
}
