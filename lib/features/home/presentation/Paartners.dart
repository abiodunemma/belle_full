


// import 'package:flutter/material.dart';
// import 'partner_card.dart';
// import 'partner_props.dart';

// class PaartnersScreeen extends StatefulWidget {
//   const PaartnersScreeen({super.key});

//   @override
//   State<PaartnersScreeen> createState() => _PaartnersScreeenState();
// }

// class _PaartnersScreeenState extends State<PaartnersScreeen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [

//                 // Top bar
//                 SizedBox(
//                   height: 56,
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       Align(
//                         alignment: Alignment.centerLeft,
//                         child: IconButton(
//                           onPressed: () => Navigator.pop(context),
//                           icon: const Icon(Icons.arrow_back_ios),
//                         ),
//                       ),
//                       const Text("Featured Partners",
//                           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                     ],
//                   ),
//                 ),

//                 const SizedBox(height: 20),

//                 // Row 1
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(child: PartnerCard(props: partnersList[0])),
//                     const SizedBox(width: 12),
//                     Expanded(child: PartnerCard(props: partnersList[1])),
//                   ],
//                 ),

//                 const SizedBox(height: 20),

//                 // Row 2
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(child: PartnerCard(props: partnersList[2])),
//                     const SizedBox(width: 12),
//                     Expanded(child: PartnerCard(props: partnersList[3])),
//                   ],
//                 ),

//                   // Row 2
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(child: PartnerCard(props: partnersList[0])),
//                     const SizedBox(width: 12),
//                     Expanded(child: PartnerCard(props: partnersList[1])),
//                   ],
//                 ),

//                   // Row 2
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(child: PartnerCard(props: partnersList[2])),
//                     const SizedBox(width: 12),
//                     Expanded(child: PartnerCard(props: partnersList[3])),
//                   ],
//                 ),

//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'partner_card.dart';
import 'partner_props.dart';

class PaartnersScreeen extends StatefulWidget {
  const PaartnersScreeen({super.key});

  @override
  State<PaartnersScreeen> createState() => _PaartnersScreeenState();
}

class _PaartnersScreeenState extends State<PaartnersScreeen> {

  // Called when user pulls down to refresh
  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 2)); // simulate a network call
    setState(() {}); // rebuild the page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(        // <-- wraps the scroll view
          onRefresh: _onRefresh,        // <-- what happens on refresh
          color: Colors.orange,         // <-- spinner color
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(), // needed for refresh to trigger even when content is short
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Top bar
                  SizedBox(
                    height: 56,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        const Text("Featured Partners",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Row 1
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: PartnerCard(props: partnersList[0])),
                      const SizedBox(width: 12),
                      Expanded(child: PartnerCard(props: partnersList[1])),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Row 2
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: PartnerCard(props: partnersList[2])),
                      const SizedBox(width: 12),
                      Expanded(child: PartnerCard(props: partnersList[3])),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Row 3
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: PartnerCard(props: partnersList[0])),
                      const SizedBox(width: 12),
                      Expanded(child: PartnerCard(props: partnersList[1])),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Row 4
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: PartnerCard(props: partnersList[2])),
                      const SizedBox(width: 12),
                      Expanded(child: PartnerCard(props: partnersList[3])),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}