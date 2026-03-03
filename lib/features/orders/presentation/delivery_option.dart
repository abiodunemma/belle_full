import 'package:flutter/material.dart';

class DeliveryOptionScreen extends StatefulWidget {
  // fix 1
  const DeliveryOptionScreen({super.key});

  @override
  State<DeliveryOptionScreen> createState() => _DeliveryOptionScreenState();
}

class _DeliveryOptionScreenState extends State<DeliveryOptionScreen> {
  int _selectedIndex = 0;

  final List<Map<String, String>> options = [
    {"title": "Standard Delivery", "duration": "30 - 45 min"},
    {"title": "Express Delivery", "duration": "10 - 20 min"},
    {"title": "Scheduled Delivery", "duration": "Pick a time"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: options.length,
      separatorBuilder: (_, __) => const Divider(),
      itemBuilder: (context, index) {
        final isSeleted = _selectedIndex == index;

        return GestureDetector(
          onTap: () => setState(() => _selectedIndex = index),
          
          child: Row(
            children: [
              Radio<int>(
                value: index,
                groupValue: _selectedIndex,
                activeColor: const Color(0xffEEA734), 
                onChanged: (value) => setState(() => _selectedIndex = value!),
              ),
              const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      options[index]["title"]!,
                      style: TextStyle(
                        fontSize: 16,
                        color: isSeleted  ? const Color(0xffEEA734) : Colors.black,
                      ),
                    ),     
                    const SizedBox(height: 4),
            ],
            
          )
          
            ]
            
          ),
          // )
        );
      },
    );
  }
}
