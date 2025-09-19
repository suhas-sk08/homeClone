import 'package:flutter/material.dart';
import 'package:home_cleaning/screens/booking_screen/cards.dart';
import 'package:home_cleaning/screens/home_screen/featured.dart';

import '../booking_screen/booking_page.dart';
import '../categories/acrepair.dart';

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Offer Banner
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(0),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'NEW OFFER',
                      style: TextStyle(color: Colors.red, fontSize: 12),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '50% OFF IN CLEANING',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text('#On first 50 booking'),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Book now',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),

          // Coupons Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Coupons',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('View all', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          Container(
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CouponCard(amount: 150, discount: '200\ OFF', code: '#A125'),
                CouponCard(amount: 300, discount: '300\ OFF', code: '#A126'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          // Top Categories Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Top categories',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('View all', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              physics: NeverScrollableScrollPhysics(),
              children: [
                CategoryCard(
                  icon: Icons.ac_unit,
                  label: 'AC Repair',
                  onTap: () {
                    Navigator.pushNamed(context, AcRepair.routeName);
                  },
                ),
                CategoryCard(
                  icon: Icons.cleaning_services,
                  label: 'Cleaning',
                  onTap: () {
                    Navigator.pushNamed(context, AcRepair.routeName);
                  },
                ),
                CategoryCard(
                  icon: Icons.build,
                  label: 'Carpenter',
                  onTap: () {},
                ),
                CategoryCard(
                  icon: Icons.kitchen,
                  label: 'Cooking',
                  onTap: () {},
                ),
                CategoryCard(
                  icon: Icons.electrical_services,
                  label: 'Electrician',
                  onTap: () {},
                ),
                CategoryCard(
                  icon: Icons.brush,
                  label: 'Painter',
                  onTap: () {},
                ),
                CategoryCard(
                  icon: Icons.plumbing,
                  label: 'Plumber',
                  onTap: () {},
                ),
                CategoryCard(
                  icon: Icons.face,
                  label: 'Salon',
                  onTap: () {
                    Navigator.pushNamed(context, BookingScreen.routeName);
                  },
                ),
              ],
            ),
          ),

          // Service Packages Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Service packages',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('View all', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ServicePackageCard(
                  color: Colors.blue,
                  title: 'Cleaning package',
                  price: '\20.05',
                ),
                ServicePackageCard(
                  color: Colors.orange,
                  title: 'Repair package',
                  price: '\15.52',
                ),
                ServicePackageCard(
                  color: Colors.lightBlue,
                  title: 'Repair package',
                  price: '\15.52',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Featured Service ',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('View all', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FeaturedServiceCard(
            name: 'Arlene McCoy',
            serviceName: 'Cleaning of bathroom',
            price: '30.00',
            originalPrice: '40.56',
            imageUrl: 'https://via.placeholder.com/50',
            rating: 5,
            duration: 30,
            description: 'Foamjet technology removes dust 2x deeper.',
            isAdded: true,
          ),
          FeaturedServiceCard(
            name: 'Darlene Robertson',
            serviceName: 'Repair work',
            price: '15.00',
            originalPrice: '20.00',
            imageUrl: 'https://via.placeholder.com/50',
            rating: 5,
            duration: 60,
            description: 'Expert carpenter for quick repairs.',
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Expert Service By Rating ',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('View all', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ServiceCard(
            name: 'Leslie Alexander',
            serviceName: 'Painting service',
            location: 'kim, santaAna, Surat',
            imageUrl: 'https://via.placeholder.com/50',
            rating: 5.0,
          ),
          ServiceCard(
            name: 'Esther Howard',
            serviceName: 'Salon service',
            location: 'kim, allentown, Surat',
            imageUrl: 'https://via.placeholder.com/50',
            rating: 2.0,
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String name;
  final String serviceName;
  final String location;
  final String imageUrl;
  final double rating;

  ServiceCard({
    required this.name,
    required this.serviceName,
    required this.location,
    required this.imageUrl,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  serviceName,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 14, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      location,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow[700], size: 16),
              SizedBox(width: 4),
              Text(
                '$rating',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
