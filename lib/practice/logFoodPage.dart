import 'package:flutter/material.dart';
class LogFoodPage extends StatelessWidget {
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
        title: Text(
          'Today',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CalendarView(),
            SizedBox(height: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.scanner),
                        SizedBox(width: 8),
                        Text('AI Scanner'),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/scanner1');
                    },
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.description),
                        SizedBox(width: 8),
                        Text('Describe Meal to AI'),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/describeMeal');
                    },
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.save),
                        SizedBox(width: 8),
                        Text('Saved Meals'),
                      ],
                    ),
                    onPressed: () {
                      // Will implement later
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
