import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: _onRefresh,
          color: Colors.orange,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(), 
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                SizedBox(
                  height: 56,
                  child:  Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(onPressed: () {
                          Navigator.pop(context);
                        }, 
                        icon: const Icon(Icons.cancel)
                      ),
                      ),
                      const Text(
                        'My Orders',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ]

                  ),

                ),
                const SizedBox(height: 28
                       ),
                Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 214, 213, 213),
                                 width: 1.5),
                                 borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                             child: const Text(
                            '1',
                            style: TextStyle(
                              fontSize: 16,
                               color: Colors.orange,
                            ),
                          ),
                            ),
                           const SizedBox(width: 15),
                          const Expanded(
                            child: Text(
                          'Cookie Sandwich Shortbread, Shortbread, chocolate turtle cookies, and red velvet.',
                         style: TextStyle(
                         fontSize: 16,
                           ),
                          maxLines: 3,
                         overflow: TextOverflow.ellipsis,
                        ),
                          ),
                        const SizedBox(width: 4),

                         Text(
                            '\$12.99',
                            style: TextStyle(
                              fontSize: 16,
                             color: Colors.orange,
                              
                            )
                          ),
                          ]
                  ),

                  const Divider(
  color: Color.fromARGB(255, 214, 213, 213),
  thickness: 1,
  height: 32,        // spacing above and below the line
),

const SizedBox(height: 16),
                
                             Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 214, 213, 213),
                                 width: 1.5),
                                 borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                             child: const Text(
                            '1',
                            style: TextStyle(
                              fontSize: 16,
                               color: Colors.orange,
                            ),
                          ),
                            ),
                           const SizedBox(width: 15),
                          const Expanded(
                            child: Text(
                          'Cookie Sandwich Shortbread, Shortbread, chocolate turtle cookies, and red velvet.',
                         style: TextStyle(
                         fontSize: 16,
                           ),
                          maxLines: 3,
                         overflow: TextOverflow.ellipsis,
                        ),
                          ),
                        const SizedBox(width: 4),

                         Text(
                            '\$12.99',
                            style: TextStyle(
                              fontSize: 16,
                             color: Colors.orange,
                              
                            )
                          ),
                          ]
                  ),

                  const Divider(
  color: Color.fromARGB(255, 214, 213, 213),
  thickness: 1,
  height: 32,        // spacing above and below the line
),

const SizedBox(height: 16),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       
                          children: [
 Text(
  "Subtotal",
  style: TextStyle(
    fontSize: 15,
  ),
 ),


 Text(
  "\$12.99",
  style: TextStyle(
    fontSize: 15,
  ),
 ),



                          ]
                          ),
 const SizedBox(height: 12),

                           Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                          children: [
 Text(
  "Delivery ",
  style: TextStyle(
    fontSize: 15,
  ),
 ),

 Text(
  "\$0",
  style: TextStyle(
    fontSize: 15,
  ),
 ),

                          ]
                          ),

 const SizedBox(height: 12),

                           Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                          children: [
 Text(
  "Total",
  style: TextStyle(
    fontSize: 15,
  ),
 ),

 Text(
  "\$30",
  style: TextStyle(
    fontSize: 15,
    color: Colors.orange,
  ),
 ),
                          ]
                          ),

  const SizedBox(height: 36),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: const [
    Text(
      'Add more items',
      style: TextStyle(fontSize: 15, color: Colors.orange),
    ),
    IconButton(onPressed: null
    , icon: Icon(Icons.arrow_forward_ios, size: 20))
  ],
),
const Divider(
  color: Color.fromARGB(255, 214, 213, 213),
  thickness: 1,
  height: 22,        // spacing above and below the line
),


Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: const [
    Text(
      'Promo Code',
      style: TextStyle(fontSize: 15),
    ),
     IconButton(onPressed: null
    , icon: Icon(Icons.arrow_forward_ios, size: 20))
  ],
),
const Divider(
  color: Color.fromARGB(255, 214, 213, 213),
  thickness: 1,
  height: 22,        // spacing above and below the line
),

const SizedBox(height: 12),
                  
ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 40),
    backgroundColor: Colors.orange,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),

                  child: Text(" CONTINUE (\$12.99)", style:  TextStyle(color: Colors.white),))   

              ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
