import 'package:flutter/material.dart';
import 'Kitchen_props.dart';
import 'Kitchen_card.dart';

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
            Stack(
              children: [
                SizedBox(
                  height: 240,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/cake.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 1.6,
                  right: 0,
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.share, color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.search, color: Colors.white),
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

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Mayfield Bakery & Cafe",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),

                  const Row(
                    children: [
                      Icon(Icons.attach_money_rounded, color: Colors.grey, size: 18),
                      SizedBox(width: 6),
                      Text("Free Delivery", style: TextStyle(color: Colors.grey, fontSize: 15)),
                      SizedBox(width: 8),
                      Text("•", style: TextStyle(color: Color(0xff868686))),
                      SizedBox(width: 8),
                      Text("American", style: TextStyle(color: Colors.grey, fontSize: 15)),
                      SizedBox(width: 8),
                      Text("•", style: TextStyle(color: Color(0xff868686))),
                      SizedBox(width: 8),
                      Text("Desserts", style: TextStyle(color: Colors.grey, fontSize: 15)),
                    ],
                  ),

                  const SizedBox(height: 16),

            
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.orange,
                          child: Icon(Icons.attach_money_outlined, color: Colors.white, size: 16),
                        ),
                        const SizedBox(width: 6),
                        const Text("Free Delivery", style: TextStyle(color: Colors.grey, fontSize: 16)),
                        const SizedBox(width: 16),
                        const CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.orange,
                          child: Icon(Icons.punch_clock, color: Colors.white, size: 16),
                        ),
                        const SizedBox(width: 6),
                        const Text("25 minutes", style: TextStyle(color: Colors.grey, fontSize: 16)),
                        const SizedBox(width: 12),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                            side: const BorderSide(color: Color(0xffEEA734), width: 1),
                            padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "Take away",
                            style: TextStyle(
                              color: Color(0xffEEA734),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                
                  const SizedBox(height: 16),

                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Expanded(child: KitchenCard(props: kitchenList[1])),
                  //     const SizedBox(width: 12),
                  //     Expanded(child: KitchenCard(props: kitchenList[2])),
                  //   ],
                  // ),
                  SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(width: 200, child: KitchenCard(props: kitchenList[1])),
      const SizedBox(width: 12),
      SizedBox(width: 200, child: KitchenCard(props: kitchenList[2])),
       const SizedBox(width: 12),
      SizedBox(width: 200, child: KitchenCard(props: kitchenList[3])),
       const SizedBox(width: 12),
      SizedBox(width: 200, child: KitchenCard(props: kitchenList[4])),
       const SizedBox(width: 12),
      SizedBox(width: 200, child: KitchenCard(props: kitchenList[5])),
    ],
  ),
),
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