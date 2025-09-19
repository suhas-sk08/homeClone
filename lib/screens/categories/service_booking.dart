import 'package:flutter/material.dart';
import 'package:home_cleaning/screens/categories/payment_screen.dart';

class ServiceBookingScreen extends StatefulWidget {
  static const String routeName = 'ServiceBookingScreen';

  @override
  _ServiceBookingScreenState createState() => _ServiceBookingScreenState();
}

class _ServiceBookingScreenState extends State<ServiceBookingScreen> {
  int? _selectedDateIndex = 1;
  int? _selectedTimeIndex;

  final List<String> dates = ['Sun 11', 'Mon 12', 'Tue 13'];
  final List<String> times = [
    '03:30 PM',
    '04:00 PM',
    '05:00 PM',
    '05:30 PM',
    '06:00 PM',
    '06:30 PM',
    '07:00 PM',
    '07:30 PM',
  ];

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
        title: Text('Summary',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.home, color: Colors.blue),
                SizedBox(width: 8.0),
                Expanded(
                  child: Text(
                    'Home - 993, 16th Cross Road, 1st Stage, Kumaraswamy Layout',
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: 16.0),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'When should the professional arrive?',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 4.0),
            Text(
              'Your service will take approx. 2 hrs',
              style: TextStyle(fontSize: 14.0, color: Colors.grey),
            ),
            SizedBox(height: 16.0),
            Text(
              'Select start time of service',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(dates.length, (index) {
                return ChoiceChip(
                  label: Text(dates[index]),
                  selected: _selectedDateIndex == index,
                  onSelected: (selected) {
                    setState(() {
                      _selectedDateIndex = selected ? index : null;
                    });
                  },
                  selectedColor: Colors.blue.withOpacity(0.2),
                  backgroundColor: Colors.grey[200],
                );
              }),
            ),
            SizedBox(height: 16.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: List.generate(times.length, (index) {
                return ChoiceChip(
                  label: Text(times[index]),
                  selected: _selectedTimeIndex == index,
                  onSelected: (selected) {
                    setState(() {
                      _selectedTimeIndex = selected ? index : null;
                    });
                  },
                  selectedColor: Colors.blue.withOpacity(0.2),
                  backgroundColor: Colors.grey[200],
                );
              }),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  // Handle proceed to checkout button
                  Navigator.pushNamed(context, PaymentScreen.routeName);
                },
                child: Text(
                  'Proceed to checkout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
