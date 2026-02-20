import 'package:flutter/material.dart';
import 'partner_props.dart';

class PartnerCard extends StatelessWidget {
  final PartnerProps props;

  const PartnerCard({super.key, required this.props});

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
                        Text(props.timeLabel,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 11, fontWeight: FontWeight.w600)),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(props.deliveryLabel,
                        style: const TextStyle(color: Colors.white, fontSize: 11)),
                  ],
                ),
              ),
              if (props.rating != null)
                Positioned(
                  right: 8, bottom: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.star, color: Colors.white, size: 11),
                        const SizedBox(width: 3),
                        Text(props.rating!,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(props.title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            maxLines: 1, overflow: TextOverflow.ellipsis),
        const SizedBox(height: 3),
        Text(props.subtitle,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
            maxLines: 1, overflow: TextOverflow.ellipsis),
      ],
    );
  }
}