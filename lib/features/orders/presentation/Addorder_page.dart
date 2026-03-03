import 'package:flutter/material.dart';
import 'delivery_option.dart';

class AddorderPage extends StatefulWidget {
  const AddorderPage({super.key});

  @override
  State<AddorderPage> createState() => _AddorderPageState();
}

class _AddorderPageState extends State<AddorderPage> {
   int _quantity = 1;
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
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                'assets/images/cake.png',
                fit: BoxFit.cover,
              )
              ),
              const SizedBox(height: 5),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Cookie Sandwich",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "A delicious cookie sandwich made with two soft cookies and a creamy filling.",
                      style: TextStyle(fontSize: 15, color: Colors.grey)
                    ),
                     const SizedBox(height: 10),

const Row(
                    children: [
                      
                      Icon(Icons.attach_money_rounded, color: Colors.grey, size: 18),
                       SizedBox(width: 6),
                      Text("•", style: TextStyle(color: Color(0xff868686))),
                      SizedBox(width: 6),
                      Text("Free Delivery", style: TextStyle(color: Colors.grey, fontSize: 15)),
                      SizedBox(width: 8),
                      Text("•", style: TextStyle(color: Color(0xff868686))),
                      SizedBox(width: 8),
                      Text("Chinese", style: TextStyle(color: Colors.grey, fontSize: 15)),
                      SizedBox(width: 8),
                      Text("•", style: TextStyle(color: Color(0xff868686))),
                      SizedBox(width: 8),
                      Text("American", style: TextStyle(color: Colors.grey, fontSize: 15)),
                    ],
                    ),
                    const SizedBox(height: 16),
                        Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Text(
      "Choice of top Cookie",
      style: TextStyle(color: Colors.grey, fontSize: 20),
    ),
    ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: Size(100, 40),
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text("Button", style: TextStyle(color: Colors.white),
      ),
    ),

  ],
),
const DeliveryOptionScreen(),


Center(
child:Row(
  mainAxisSize: MainAxisSize.min,

  children: [
    GestureDetector(
      onTap: () {
        if (_quantity > 1) setState(() => _quantity--);
      },
      child: Container(
        
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color:  const Color.fromARGB(255, 198, 195, 195), width: 1.5),
        ),
        child: const Icon(Icons.remove, size: 18, color: Colors.grey),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        "0$_quantity",
        style: const TextStyle(fontSize: 18),
      ),
    ),
    GestureDetector(
      onTap: () => setState(() => _quantity++),
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color:  const Color.fromARGB(255, 198, 195, 195), width: 1.5),
        ),
        child: const Icon(Icons.add, size: 18, color: Colors.grey),
      ),
    ),
  ],
),
),

 const SizedBox(height: 20),

ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 40),
    backgroundColor: Colors.orange,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),

                  child: Text("ADD TO ORDER (\$12.99)", style:  TextStyle(color: Colors.white),))   
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
