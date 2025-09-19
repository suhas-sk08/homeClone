import 'package:flutter/material.dart';
import 'package:home_cleaning/screens/booking_screen/pendingBooking.dart';
import 'package:home_cleaning/screens/home_screen/bottom_nav.dart';

class BookingScreen extends StatelessWidget {
  static const String routeName = 'BookingScreen';

  final List<Map<String, dynamic>> bookings = [
    {
      'id': '#58961',
      'service': 'Curtain cleaning',
      'price': '26.0',
      'discount': '(10%)',
      'status': 'Pending',
      'servicemen': '1 servicemen',
      'dateTime': '22 Feb, 2024 - 10:28 AM',
      'location': 'xyz',
      'paymentStatus': 'Paid in advance',
      'provider': 'Arlene McCoy',
      'rating': 3.5,
      'imageUrl':
          'https://via.placeholder.com/50', // replace with actual image url
    },
    {
      'id': '#58962',
      'service': 'Window cleaning',
      'price': '30.0',
      'discount': '(5%)',
      'status': 'Completed',
      'servicemen': '2 servicemen',
      'dateTime': '15 Mar, 2024 - 11:00 AM',
      'location': 'xyz',
      'paymentStatus': 'Unpaid',
      'provider': 'John Doe',
      'rating': 4.0,
      'imageUrl':
          'https://via.placeholder.com/50', // replace with actual image url
    },
    // Add more bookings here...
  ];

  void _onCardTapped(BuildContext context, Map<String, dynamic> booking) {
    // Navigate to the details page when a booking card is tapped
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PendingBookingScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bookings',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            iconSize: 18,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search here',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('All booking',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: bookings.length,
                itemBuilder: (context, index) {
                  final booking = bookings[index];
                  return GestureDetector(
                    onTap: () => _onCardTapped(context, booking),
                    child: BookingCard(booking: booking),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // Replace the bottom navigation bar with your custom widget
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class BookingCard extends StatelessWidget {
  final Map<String, dynamic> booking;

  BookingCard({required this.booking});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(booking['id'], style: TextStyle(color: Colors.blue)),
                    SizedBox(height: 8),
                    Text(
                      booking['service'],
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          booking['price'],
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 4),
                        Text(
                          booking['discount'],
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  booking['imageUrl'],
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Divider(
            color: Colors.black54,
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text('Status', style: TextStyle(color: Colors.black54)),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(booking['status'],
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Selected servicemen'),
              Text(booking['servicemen']),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Date & time'),
                  IconButton(
                    icon: Icon(Icons.edit, size: 14),
                    onPressed: () {
                      // Handle edit action here
                    },
                  ),
                ],
              ),
              Text(booking['dateTime']),
            ],
          ),
          SizedBox(height: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Location'),
                  IconButton(
                    icon: Icon(Icons.edit, size: 14),
                    onPressed: () {
                      // Handle edit action here
                    },
                  ),
                ],
              ),
              Text(booking['location']),
            ],
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Payment'),
              Text(booking['paymentStatus'],
                  style: TextStyle(
                      color: booking['paymentStatus'] == 'Paid in advance'
                          ? Colors.green
                          : Colors.red)),
            ],
          ),
          SizedBox(height: 8),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(booking['imageUrl']),
              radius: 16,
            ),
            title: Text(booking['provider']),
            subtitle: Text('Provider'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, color: Colors.yellow[700], size: 16),
                SizedBox(width: 4),
                Text('${booking['rating']}', style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BookingDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> booking;

  BookingDetailsScreen({required this.booking});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Booking ID: ${booking['id']}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Text('Service: ${booking['service']}',
                style: TextStyle(fontSize: 16)),
            Text('Price: \$${booking['price']}',
                style: TextStyle(fontSize: 16)),
            Text('Discount: ${booking['discount']}',
                style: TextStyle(fontSize: 16)),
            Text('Status: ${booking['status']}',
                style: TextStyle(fontSize: 16)),
            Text('Servicemen: ${booking['servicemen']}',
                style: TextStyle(fontSize: 16)),
            Text('Date & Time: ${booking['dateTime']}',
                style: TextStyle(fontSize: 16)),
            Text('Location: ${booking['location']}',
                style: TextStyle(fontSize: 16)),
            Text('Payment Status: ${booking['paymentStatus']}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text('Provider Details:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(booking['imageUrl']),
                radius: 20,
              ),
              title: Text(booking['provider']),
              subtitle: Text('Rating: ${booking['rating']}'),
            ),
          ],
        ),
      ),
    );
  }
}
