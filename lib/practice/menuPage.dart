// Menu Page
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Today',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
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
                    child: Text('Breakfast'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/logFood');
                    },
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    child: Text('Lunch'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/logFood');
                    },
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    child: Text('Dinner'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/logFood');
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

class CalendarView extends StatefulWidget {
  const CalendarView({super.key});

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(7, (index) {
          DateTime date = DateTime.now()
              .subtract(Duration(days: DateTime.now().weekday - 1))
              .add(Duration(days: index));
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedDate = date;
              });
            },
            child: SizedBox(
              width: 35,
              height: 60,
              child: Column(
                children: [
                  Text(DateFormat('E').format(date)),
                  const SizedBox(height: 5),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color:
                          _selectedDate.day == date.day
                              ? Colors.green
                              : Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(
                        color:
                            _selectedDate.day == date.day
                                ? Colors.white
                                : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
