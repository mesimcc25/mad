import 'package:flutter/material.dart';

class ImageDisplayScreen extends StatelessWidget {
  const ImageDisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Image Display",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            const Text("Network Image:", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Image.network(
                "https://picsum.photos/300",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),

            const Text("Asset Image:", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Image.asset("assets/images/sample.jpg", fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
