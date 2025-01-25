import 'package:flutter/material.dart';

import '../widgets/custom_bottom_navigator.dart';

class RankingPage extends StatelessWidget {
  final List<Map<String, dynamic>> rankings = [
    {'name': 'Alice', 'score': 95},
    {'name': 'Bob', 'score': 90},
    {'name': 'Charlie', 'score': 85},
    {'name': 'David', 'score': 80},
    {'name': 'Eve', 'score': 75},
    {'name': 'Frank', 'score': 70},
    {'name': 'Grace', 'score': 65},
    {'name': 'Heidi', 'score': 60},
    {'name': 'Ivan', 'score': 55},
    {'name': 'Judy', 'score': 50},
    {'name': 'Kevin', 'score': 45},
    {'name': 'Linda', 'score': 40},
    {'name': 'Michael', 'score': 35},
    {'name': 'Nancy', 'score': 30},
    {'name': 'Oliver', 'score': 25},
    {'name': 'Pamela', 'score': 20},
    {'name': 'Quincy', 'score': 15},
    {'name': 'Randy', 'score': 10},
    {'name': 'Sally', 'score': 5},
    {'name': 'Tom', 'score': 0},
  ];

  RankingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 0, 53),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 10, 0, 53),
            expandedHeight: size.height * 0.4,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                'Ranking',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              background: Image.asset(
                'assets/images/Podio.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  tileColor: index % 2 == 0
                      ? const Color(0xFFFFA9EC)
                      : Colors.deepPurple[900],
                  leading: Text.rich(
                    TextSpan(
                      text: '${index + 1}',
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                      children: [
                        const TextSpan(text: '  '),
                        WidgetSpan(
                          child: Image.asset(
                            'assets/icons/nexus_legends.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ],
                    ),
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  title: Text(
                    textAlign: TextAlign.center,
                    rankings[index]['name'],
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  trailing: Text(
                    'Score: ${rankings[index]['score']}',
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                );
              },
              childCount: rankings.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigator(),
    );
  }
}
