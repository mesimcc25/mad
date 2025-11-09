import 'package:flutter/material.dart';

class SocialPost extends StatelessWidget {
  const SocialPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Social Media Post"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          width: 340,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              /// User Row
              Row(
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1607746882042-944635dfe10e?w=800",
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "2 hours ago",
                        style: TextStyle(color: Colors.grey[600], fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 12),

              /// Caption
              const Text(
                "Exploring the beauty of nature 🌿✨ #travel #nature",
                style: TextStyle(fontSize: 14),
              ),

              const SizedBox(height: 10),

              /// Post Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  "https://images.unsplash.com/photo-1501785888041-af3ef285b470?w=800",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 10),

              /// Action Buttons
              Row(
                children: [
                  Icon(Icons.favorite_border, color: Colors.redAccent),
                  const SizedBox(width: 4),
                  const Text("1.2k"),
                  const SizedBox(width: 16),
                  Icon(Icons.mode_comment_outlined, color: Colors.blueAccent),
                  const SizedBox(width: 4),
                  const Text("245"),
                  const Spacer(),
                  Icon(Icons.share, color: Colors.green),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
