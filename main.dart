import 'package:flutter/material.dart';

import 'screens/about_app.dart';
import 'screens/contact_card.dart';
import 'screens/food_menu_item.dart';
import 'screens/music_album.dart';
import 'screens/news_preview.dart';
import 'screens/product_showcase.dart';
import 'screens/profile_card.dart';
import 'screens/social_post.dart';
import 'screens/weather_card.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()));
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> screens = [
    {"title": "Profile Card", "screen": const ProfileCardScreen()},
    {"title": "Food Menu Item", "screen": const FoodMenuItem()},
    {"title": "Weather Card", "screen": const WeatherCard()},
    {"title": "Product Showcase", "screen": const ProductShowcase()},
    {"title": "News Preview", "screen": const NewsPreview()},
    {"title": "Social Media Post", "screen": const SocialPost()},
    {"title": "Music Album Card", "screen": const MusicAlbum()},
    {"title": "Contact Card", "screen": const ContactCard()},
    {"title": "About App Screen", "screen": const AboutApp()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Assignment Screens"),
        backgroundColor: Colors.deepPurple,
      ),

      body: ListView.builder(
        itemCount: screens.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8),
            elevation: 4,
            child: ListTile(
              title: Text(screens[index]["title"]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => screens[index]["screen"]),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
