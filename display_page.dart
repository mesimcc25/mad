import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  final String name, email, message;
  const DisplayPage({
    super.key,
    required this.name,
    required this.email,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Submitted Information",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              Text("Name: $name"),
              Text("Email: $email"),
              Text("Message: $message"),
            ],
          ),
        ),
      ),
    );
  }
}
