import 'package:flutter/material.dart';
import 'package:home_cleaning/screens/booking_screen/provider_screen.dart';

import '../cart_screen/cart.dart';
import 'service_booking.dart';

class ServiceDetailPage extends StatelessWidget {
  static const String routeName = 'ServiceDetailPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            Stack(
              children: [
                Image.network(
                  'https://via.placeholder.com/300', // Replace with your image URL or asset
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                Positioned(
                  top: 20,
                  left: 20,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.white,
                  ),
                ),
                const Positioned(
                  top: 20,
                  right: 20,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
                const Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    'AC cleaning service',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 20,
                  right: 20,
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      Text(
                        '3.8',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Thumbnails
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildThumbnail('https://via.placeholder.com/300'),
                  buildThumbnail('https://via.placeholder.com/300'),
                  buildThumbnail('https://via.placeholder.com/300'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Service Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '₹15.0',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.timer, size: 16),
                            SizedBox(width: 5),
                            Text('00:45 minute'),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.category, size: 16),
                            SizedBox(width: 5),
                            Text('AC repairing'),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('No. of required servicemen: 2'),
                        SizedBox(height: 5),
                        Text('Category: AC repairing'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Profile Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://via.placeholder.com/300'), // Replace with your image URL or asset
                      radius: 30,
                    ),
                    const SizedBox(width: 15),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kurt Bates',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            SizedBox(width: 5),
                            Text('3.0'),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text('Total experience: 3 years'),
                        Text('Services delivered: 250'),
                      ],
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        // Navigate to more details
                        Navigator.pushNamed(context, ProviderScreen.routeName);
                      },
                      child: const Text('More ->'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Reviews Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Reviews',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  buildReview('Devon Lane', '23 Feb, 2024',
                      'This is amazing service I have ever get', 3),
                  buildReview(
                      'Guy Hawkins',
                      '23 Feb, 2024',
                      'I just love their service & the staff nature for work, I\'d like to hire them again',
                      3),
                  buildReview('Jane Cooper', '23 Feb, 2024',
                      'I love their work with ease, Thank you!', 3),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Additional Services Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Also provided below services',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildServiceCard('Ac water drop solu..', '30.56',
                          'https://via.placeholder.com/300'),
                      buildServiceCard('Ac master service', '30.56',
                          'https://via.placeholder.com/300'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Add to Cart Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, CartScreen.routeName);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                ),
                child: Text(
                  'Add To Cart',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildThumbnail(String imageUrl) {
    return Container(
      width: 80,
      height: 80,
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
    );
  }

  Widget buildReview(String name, String date, String reviewText, int rating) {
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://yourimageurl.com/profile.jpg'), // Replace with your image URL or asset
              radius: 20,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(date),
              ],
            ),
            const Spacer(),
            Row(
              children: List.generate(
                rating,
                (index) =>
                    const Icon(Icons.star, color: Colors.yellow, size: 16),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(reviewText),
        const Divider(color: Colors.grey),
      ],
    );
  }

  Widget buildServiceCard(String serviceName, String price, String imageUrl) {
    return Container(
      width: 160,
      child: Column(
        children: [
          Image.network(imageUrl, fit: BoxFit.cover, height: 100, width: 160),
          const SizedBox(height: 5),
          Text(
            serviceName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('₹$price'),
          ElevatedButton(
            onPressed: () {
              // Add to cart action
            },
            child: const Text('+ Add'),
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
