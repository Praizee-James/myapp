// Describe Meal Page
import 'package:flutter/material.dart';
class DescribeMealPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Describe Meal to AI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Food Name'),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'e.g Jollof rice',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[100],
              ),
            ),
            SizedBox(height: 16),
            Text('Ingredients'),
            SizedBox(height: 8),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'e.g rice, pepper',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[100],
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.mic),
                SizedBox(width: 8),
                Text('Voice description'),
              ],
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'e.g Jollof rice',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[100],
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              onPressed: () {
                // Analyze Meal Logic here
              },
              child: Center(child: Text('Analyze')),
            ),
          ],
        ),
      ),
    );
  }
}