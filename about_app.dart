import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("About App"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // App Icon Circle
              Container(
                padding: const EdgeInsets.all(18),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.teal,
                ),
                child: const Icon(
                  Icons.flutter_dash,
                  color: Colors.white,
                  size: 45,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                "Flutter Showcase App",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 6),

              Text(
                "Version 1.0.0",
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),

              const SizedBox(height: 14),

              const Text(
                "This Flutter application is created as part of the "
                "Mobile App Development assignment to design and present "
                "multiple UI screens such as ID cards, profiles, product "
                "cards, music cards, weather card, and more.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, height: 1.4),
              ),

              const SizedBox(height: 18),

              const Divider(),

              const SizedBox(height: 8),

              const Text(
                "Developed by:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 4),

              const Text("MES IMCC", style: TextStyle(fontSize: 16)),

              const SizedBox(height: 14),

              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                onPressed: () {},
                icon: const Icon(Icons.info_outline),
                label: const Text("Learn More"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
