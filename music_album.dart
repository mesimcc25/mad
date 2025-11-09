import 'package:flutter/material.dart';

class MusicAlbum extends StatelessWidget {
  const MusicAlbum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Music Album"),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /// Album Cover
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  "https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?w=800",
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 12),

              /// Album Name
              const Text(
                "Midnight Dreams",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              /// Artist Text
              Text(
                "by The Dreamers",
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),

              const SizedBox(height: 10),

              /// Music Progress Bar (Dummy UI)
              Column(
                children: [
                  Slider(
                    value: 0.4,
                    onChanged: (v) {},
                    activeColor: Colors.black,
                    inactiveColor: Colors.grey[400],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("01:20", style: TextStyle(fontSize: 12)),
                        Text("03:45", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 6),

              /// Music Controls
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.skip_previous_rounded,
                    size: 32,
                    color: Colors.black,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    padding: const EdgeInsets.all(12),
                    child: const Icon(
                      Icons.play_arrow_rounded,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.skip_next_rounded, size: 32, color: Colors.black),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
