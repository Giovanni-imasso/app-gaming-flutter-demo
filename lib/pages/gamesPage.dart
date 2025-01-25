import 'package:flutter/material.dart';

import '../widgets/customCard.dart';
import '../widgets/custom_bottom_navigator.dart';

class GamesPage extends StatelessWidget {
  final List<Map<String, dynamic>> games = [
    {
      'name': 'Ruota Della Fortuna',
      'stars': 4,
      'image': 'assets/images/ruota_della_fortuna.png',
    },
    {
      'name': 'Virtual tour',
      'stars': 3,
      'image': 'assets/images/Virtualtour.png'
    },
    {
      'name': 'Quiz time',
      'stars': 2,
      'image': 'assets/images/Quiztime.png',
    },
    {
      'name': 'Ruota Della Fortuna',
      'stars': 4,
      'image': 'assets/images/ruota_della_fortuna.png',
    },
    {
      'name': 'Virtual tour',
      'stars': 3,
      'image': 'assets/images/Virtualtour.png'
    },
    {
      'name': 'Quiz time',
      'stars': 2,
      'image': 'assets/images/Quiztime.png',
    },
    {
      'name': 'Ruota Della Fortuna',
      'stars': 4,
      'image': 'assets/images/ruota_della_fortuna.png',
    },
    {
      'name': 'Virtual tour',
      'stars': 3,
      'image': 'assets/images/Virtualtour.png'
    },
    {
      'name': 'Quiz time',
      'stars': 2,
      'image': 'assets/images/Quiztime.png',
    },
  ];

  GamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 0, 53),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 10, 0, 53),
        title: const Text(
          'Games',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: games.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CustomCard(
              imageUrl: games[index]["image"],
              name: games[index]["name"],
              score: games[index]["stars"],
            ),
          );
        },
      ),
      bottomNavigationBar: const CustomBottomNavigator(),
    );
  }
}
