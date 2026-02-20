// import 'package:flutter/material.dart';

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
//                 SizedBox(
//                   height: 56,
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       Align(
//                         alignment: Alignment.centerLeft,
//                         child: IconButton(
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                           icon: const Icon(Icons.arrow_back_ios),
//                         ),
//                       ),
//                       const Text(
//                         "Featured Partners",
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: buildPartnerCard(
//                         image: "assets/images/plate1.png",
//                         title: "Tacos Nanchas",
//                         subtitle: "Tacos & Mexican",
//                         timeLabel: "20 min",
//                         deliveryLabel: "Free",
//                         rating: null,
//                       ),
//                     ),
//                     const SizedBox(width: 12),
//                     Expanded(
//                       child: buildPartnerCard(
//                         image: "assets/images/plate2.png",
//                         title: "Mario Italiano",
//                         subtitle: "Italian & Pasta",
//                         timeLabel: "15 min",
//                         deliveryLabel: "Pay",
//                         rating: "4.8",
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildPartnerCard({
//     required String image,
//     required String title,
//     required String subtitle,
//     required String timeLabel,
//     required String deliveryLabel,
//     String? rating,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Image with overlay
//         ClipRRect(
//           borderRadius: BorderRadius.circular(12),
//           child: Stack(
//             children: [
//               // Background image
//               Image.asset(
//                 image,
//                 width: double.infinity,
//                 height: 160,
//                 fit: BoxFit.cover,
//               ),
//               // Dark gradient at the bottom for readability
//               Positioned(
//                 left: 0,
//                 right: 0,
//                 bottom: 0,
//                 child: Container(
//                   height: 60,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.bottomCenter,
//                       end: Alignment.topCenter,
//                       colors: [
//                         Colors.black.withOpacity(0.65),
//                         Colors.transparent,
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               // Bottom-left: time + delivery label
//               Positioned(
//                 left: 8,
//                 bottom: 8,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         const Icon(Icons.access_time,
//                             color: Colors.white, size: 12),
//                         const SizedBox(width: 3),
//                         Text(
//                           timeLabel,
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 11,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 2),
//                     Text(
//                       deliveryLabel,
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 11,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // Bottom-right: rating box (only if provided)
//               if (rating != null)
//                 Positioned(
//                   right: 8,
//                   bottom: 8,
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 7, vertical: 4),
//                     decoration: BoxDecoration(
//                       color: Colors.orange,
//                       borderRadius: BorderRadius.circular(6),
//                     ),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         const Icon(Icons.star,
//                             color: Colors.white, size: 11),
//                         const SizedBox(width: 3),
//                         Text(
//                           rating,
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 11,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//         const SizedBox(height: 8),
//         // Title
//         Text(
//           title,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w700,
//           ),
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//         ),
//         const SizedBox(height: 3),
//         // Subtitle
//         Text(
//           subtitle,
//           style: const TextStyle(
//             fontSize: 12,
//             color: Colors.grey,
//           ),
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//         ),

        
//       ],
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}