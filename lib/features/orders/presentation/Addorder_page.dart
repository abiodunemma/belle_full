import 'package:flutter/material.dart';

class AddorderPage extends StatelessWidget {
  const AddorderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Order")),
      body: const Center(
        child: Text("Add Order Page"),
      ),
    );
  }
}