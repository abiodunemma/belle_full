import 'package:flutter/material.dart';
import 'Kitchen_props.dart';

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
              Positioned(
                left: 0, right: 0, bottom: 0,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.65),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 8, bottom: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.access_time, color: Colors.white, size: 12),
                        const SizedBox(width: 3),
                        Text(props.amount,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 11, fontWeight: FontWeight.w600)),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(props.name,
                        style: const TextStyle(color: Colors.white, fontSize: 11)),
                  ],
                ),
              ),
           
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(props.name,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            maxLines: 1, overflow: TextOverflow.ellipsis),
        const SizedBox(height: 3),
        Text(props. description,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
            maxLines: 1, overflow: TextOverflow.ellipsis),
      ],
    );
  }
}
  
