import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                )
              ),

              const SizedBox(height: 20),
               
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Featured Partners",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "see all",
                    style: TextStyle(
                      fontSize: 16,
                    color: Color(0xffEEA734),
                    ),
                  ),
                ],
               ),
               const SizedBox(height: 10),
                Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            "assets/images/plate1.png",
            width: 150,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "Kitchen Name",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          "123 Street Name, City",
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Color(0xffEEA734),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Text(
                "4.5",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 6),
            const Text(
              "20 min",
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(width: 4),
            const Text(
              "•",
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(width: 4),
            const Text(
              "Free delivery",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ],
    ),
    
   
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            "assets/images/plate2.png",
            width: 150,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "Mario Italiano",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          "456 Another St, City",
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Color(0xffEEA734),
                borderRadius: BorderRadius.circular(6),
              ),
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
            const Text(
              "15 min",
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(width: 4),
            const Text(
              "•",
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(width: 4),
            const Text(
              "pay",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ],
    ),
  ],
),
 const SizedBox(height: 20),

 Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  child:ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: Image.asset(
      "assets/images/Banner.png",
      width: double.infinity,
    ),
  ),
 ),



SizedBox(height: 10),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Best Picks",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          "Results by team",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    // Move the "see all" Column inside the Row's children list
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "see all",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ],
),


    
            ],
        ),
      ),
      ),
      )
    );
  }
}