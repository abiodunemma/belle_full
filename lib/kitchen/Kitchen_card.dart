import 'package:flutter/material.dart';
import 'Kitchen_props.dart';
import 'package:pratice/features/orders/presentation/Addorder_page.dart';

class KitchenCard extends StatelessWidget {
  final KitchenProps props;

  const KitchenCard({super.key, required this.props});


  @override

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              Image.asset(
                props.image,
                width: double.infinity,
                height: 160,
                fit: BoxFit.cover,
              ),
           
            ],
          ),
        ),
        const SizedBox(height: 8),
        // Text(props.name,
        //     style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        //     maxLines: 1, overflow: TextOverflow.ellipsis),
        InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AddorderPage(),
      ),
    );
  },
  child: Text(
    props.name,
    style: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      
    ),
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
  ),
),
        const SizedBox(height: 3),
       
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(props.amount,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
                maxLines: 1, overflow: TextOverflow.ellipsis),
              
                SizedBox(width: 9),
                              const Text(
                                "•",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff868686),
                                ),
                              ),
                              SizedBox(width: 9),
             Text(props.description,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
                maxLines: 1, overflow: TextOverflow.ellipsis),
          ]
        ),
       
      ],
    );
  }
}
  
