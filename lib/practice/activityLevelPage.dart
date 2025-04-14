import 'package:flutter/material.dart';

class ActivityLevelPage extends StatelessWidget {
  const ActivityLevelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('What’s your activity level?'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'What’s your activity level?',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.orange),
          ),
          const SizedBox(height: 20),
          _buildActivityLevelOption('Not active', 'I quickly lose my breath climbing stairs', Colors.green),
          _buildActivityLevelOption('Lightly active', 'I do short workouts to keep myself moving.', Colors.green),
          _buildActivityLevelOption('Moderately active', 'I maintain a regular exercise routine of 1-2 times per week.', Colors.green),
          _buildActivityLevelOption('Highly active', 'Fitness is a core part of my lifestyle.', Colors.green),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserSummaryPage()),
              );
            },
            child: const Text('Continue'),
          ),
        ],
      ),
    );
  }

  Widget _buildActivityLevelOption(String title, String description, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
          const SizedBox(height: 5),
          Text(description, style: const TextStyle(fontSize: 14, color: Colors.white)),
        ],
      ),
    );
  }
}
