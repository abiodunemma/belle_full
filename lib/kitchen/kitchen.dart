import 'package:flutter/material.dart';

class kitchen extends StatefulWidget {
  const kitchen({super.key});

  @override
  State<kitchen> createState() => _kitchenState();
}

class _kitchenState extends State<kitchen> {
  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        color: Colors.orange,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ── Hero image + icons ─────────────────────
              Stack(
                children: [
                  // Background image
                  SizedBox(
                    height: 240,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/cake.png',
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Icons on top of image
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Back button (left)
                            IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(Icons.arrow_back_ios,
                                  color: Colors.white),
                            ),

                            // Share + Bookmark (right)
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share,
                                      color: Colors.white),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.search,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // ── Rest of your page content goes here ───
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mayfield Bakery & Cafe",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                     [
                      Column(
                        children: const [
                          Icon(Icons.attach_money_rounded, color: Colors.grey),
                          
                        ],
                      ),

                      SizedBox(width: 9),
                              const Text(
                                "•",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff868686),
                                ),
                              ),

                      Column(
                        children:[
                         const  Text("Free Delivery",
                         style: TextStyle(color: Colors.grey, fontSize: 15),
                         )
                        ]
                      ),

                       SizedBox(width: 9),
                              const Text(
                                "•",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff868686),
                                ),
                              ),

                        Column(
                        children: [
                         const Text("American",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),

                      SizedBox(width: 9),
                              const Text(
                                "•",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff868686),
                                ),
                              ),

                        Column(
                        children: [
                         const Text("Desserts",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                     ],
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