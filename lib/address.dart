import 'package:flutter/material.dart';
// import 'home.dart';
import 'features/home/presentation/home_page.dart';


class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {

  bool showList = false;

  final TextEditingController addressController = TextEditingController();

  final List<String> addresses = [
    "12 Allen Avenue, Ikeja",
    "5 Admiralty Way, Lekki",
    "23 Airport Road, Benin",
    "10 Wuse Zone 4, Abuja",
  ];

  List<String> filteredAddresses = [];

  @override
  void dispose() {
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(

        /// Hide keyboard + list when tapping outside
        onTap: () {
          FocusScope.of(context).unfocus();
          setState(() {
            showList = false;
          });
        },

        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                /// Back Button
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
                  ],
                ),

                const SizedBox(height: 20),

                const Text(
                  "Find restaurants near you",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Please enter your location or allow access to",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),

                const Text(
                  "your location to find restaurants near you.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 40),

                /// Set Location Button
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },

                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Color(0xffEEA734),
                        width: 1.5,
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),

                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.my_location, 
                          color: Color(0xffEEA734),
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Set Location",
                          style: TextStyle(
                            color: Color(0xffEEA734),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// Address Input
                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    controller: addressController,
                    textInputAction: TextInputAction.search,

                    onSubmitted: (value) {

                      filteredAddresses = addresses
                          .where((address) =>
                              address.toLowerCase().contains(value.toLowerCase()))
                          .toList();

                      setState(() {
                        showList = true;
                      });
                    },

                    decoration: InputDecoration(
                      hintText: "Enter a new address",

                      prefixIcon: const Icon(
                        Icons.location_on,
                        color: Color.fromARGB(255, 161, 160, 159),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 161, 160, 159),
                          width: 1.5,
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(
                          color: Color(0xffEEA734),
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),

                /// Suggestions List
                if (showList && filteredAddresses.isNotEmpty)
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: filteredAddresses.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const Icon(
                          Icons.location_on,
                          color: Color(0xffEEA734),
                        ),
                        title: Text(filteredAddresses[index]),
                        onTap: () {
                          setState(() {
                            addressController.text = filteredAddresses[index];
                            showList = false;
                          });

                          print(filteredAddresses[index]);
                        },
                      );
                    },
                  ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
