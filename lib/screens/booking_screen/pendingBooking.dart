import 'package:flutter/material.dart';
import 'package:home_cleaning/screens/booking_screen/booking_page.dart';
import 'package:home_cleaning/screens/booking_screen/provider_screen.dart';

class PendingBookingScreen extends StatelessWidget {
  static const String routeName = 'PendingBookingScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigates back to the previous screen
          },
        ),
        title: Text(
          'Pending booking',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Booking ID, Status, and Image
            Container(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://via.placeholder.com/300', // Replace with actual image
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        '#58961',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          // Handle view status action here
                        },
                        child: Text('View status',
                            style: TextStyle(color: Colors.blue)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Curtain cleaning service',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.star, color: Colors.yellow[700], size: 20),
                      SizedBox(width: 4),
                      Text('3.5', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    '* Ac cleaning',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Date, Time, and Location with borders
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // Outline border
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: Colors.grey,
                        size: 16,
                      ),
                      SizedBox(width: 8),
                      Text('23 Feb, 2024', style: TextStyle(fontSize: 14)),
                      Spacer(),
                      Container(
                        width: 1,
                        height: 24,
                        color: Colors
                            .grey, // Vertical divider between date and time
                      ),
                      Spacer(),
                      Icon(
                        Icons.access_time,
                        color: Colors.grey,
                        size: 16,
                      ),
                      SizedBox(width: 8),
                      Text('10:17 AM', style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_pin,
                        color: Colors.grey,
                        size: 16,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'xyz',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Description
            Text(
              'Description',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 8),
            Text(
              'Our expert technicians will thoroughly clean and disinfect your air conditioning system, ensuring optimal performance.',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 16),

            // Status
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red[50],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: const [
                  Icon(Icons.error, color: Colors.red),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Status: The provider has not approved yet.',
                      style: TextStyle(color: Colors.red, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Provider Details
            Row(
              children: [
                Text(
                  'Provider details',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ProviderScreen.routeName);
                    // Handle more action here
                  },
                  child: Text('More', style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://via.placeholder.com/50'), // Replace with actual image
                    radius: 30,
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Kurt Bates', style: TextStyle(fontSize: 14)),
                      SizedBox(height: 4),
                      Text('3 years of Experience',
                          style: TextStyle(color: Colors.grey, fontSize: 14)),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow[700], size: 20),
                      SizedBox(width: 4),
                      Text('3.0', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Reviews
            Row(
              children: [
                Text(
                  'Reviews',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    // Handle view all action here
                  },
                  child: Text('View all', style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            SizedBox(height: 8),
            ReviewCard(
              reviewerName: 'Devon Lane',
              reviewDate: '23 Feb, 2024',
              reviewText: '“This is amazing service I have ever gotten”',
              rating: 3,
            ),
            SizedBox(height: 20),
            // Bill Summary
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'Bill summary',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  _buildBillItem('Per servicemen charge', '12.0'),
                  _buildBillItem('2 servicemen 12.0 * 2)', '24.0'),
                  _buildBillItem('Tax (2%)', '+12.0', isGreen: true),
                  _buildBillItem('Platform fees', '+8.0', isGreen: true),
                  Divider(),
                  _buildBillItem('Total Amount', '44.0',
                      isBold: true, isBlue: true),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Cancel Booking Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _showCancelBookingDialog(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                ),
                child: Text(
                  'Cancel Booking',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to show the first dialog (Reason for cancel)
  void _showCancelBookingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Reason of cancel booking',
            style: TextStyle(fontSize: 16),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Write here',
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Icon(Icons.info_outline, color: Colors.grey),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Please read the Cancellation policy before cancelling a reservation.',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the first dialog
                _showConfirmationDialog(
                    context); // Show the confirmation dialog
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  // Function to show the second dialog (Success confirmation)
  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Successfully delete',
            style: TextStyle(fontSize: 18),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle, color: Colors.blue, size: 50),
              SizedBox(height: 16),
              Text(
                'Your booking cancel successfully',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, BookingScreen.routeName); // Close the dialog
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: Text(
                  'Okay',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

Widget _buildBillItem(String label, String amount,
    {bool isBold = false, bool isGreen = false, bool isBlue = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black54,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            fontSize: 14,
            color: isGreen
                ? Colors.green
                : isBlue
                    ? Colors.blue
                    : Colors.black,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    ),
  );
}

class ReviewCard extends StatelessWidget {
  final String reviewerName;
  final String reviewDate;
  final String reviewText;
  final double rating;

  ReviewCard({
    required this.reviewerName,
    required this.reviewDate,
    required this.reviewText,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://via.placeholder.com/50'), // Replace with actual image
            radius: 20,
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  reviewerName,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(reviewDate, style: TextStyle(color: Colors.grey)),
                SizedBox(height: 4),
                Text(reviewText, style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow[700], size: 20),
              SizedBox(width: 4),
              Text('$rating', style: TextStyle(fontSize: 16)),
            ],
          ),
        ],
      ),
    );
  }
}
