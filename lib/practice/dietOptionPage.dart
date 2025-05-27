// Calorie Tracker Page
import 'package:flutter/material.dart';
import 'package:myapp/practice/firstPage.dart';
class CalorieTrackerPage extends StatelessWidget {
  const CalorieTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track your meal'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Track your meal for the day with a calorie tracker.',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.green,
                  width: 8,
                ),
              ),
              child: const Column(
                children: [
                  Text(
                    '1857',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  Text(
                    'calories left',
                    style: TextStyle(fontSize: 18, color: Colors.green),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _buildMealOption('Breakfast', Icons.breakfast_dining),
            _buildMealOption('Lunch', Icons.lunch_dining),
            _buildMealOption('Dinner', Icons.dinner_dining),
            _buildMealOption('Snacks', Icons.fastfood),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DailyStatsPage()),
                );
              },
              child: const Text('Continue', style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMealOption(String meal, IconData icon) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, size: 30),
              const SizedBox(width: 15),
              Text(meal, style: const TextStyle(fontSize: 18)),
            ],
          ),
          TextButton(
            onPressed: () {
              // Handle the logic for logging meals
            },
            child: const Text('+ Log', style: TextStyle(fontSize: 18, color: Colors.green)),
          ),
        ],
      ),
    );
  }
}
