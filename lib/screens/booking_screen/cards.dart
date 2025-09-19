import 'package:flutter/material.dart';

class CouponCard extends StatelessWidget {
  final int amount;
  final String discount;
  final String code;

  CouponCard({
    required this.amount,
    required this.discount,
    required this.code,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(16),
      width: 280,
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xFFE6EFFF), // Background color
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.blueAccent, // Circle background color
                radius: 20,
                child: Icon(
                  Icons.local_offer,
                  color: Colors.white, // Icon color
                  size: 16,
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Spend $amount amount',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Use code $code',
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            '$discount OFF',
            style: const TextStyle(
              color: Colors.blueAccent,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap; // Add this line

  CategoryCard({
    required this.icon,
    required this.label,
    required this.onTap, // Add this line
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Use GestureDetector or InkWell
      onTap: onTap, // Add this line to handle tap
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, size: 28, color: Colors.blue),
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

class ServicePackageCard extends StatelessWidget {
  final Color color;
  final String title;
  final String price;

  ServicePackageCard(
      {required this.color, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(16),
      width: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon at the top (you need to replace with the appropriate icon)
          const Icon(
            Icons
                .cleaning_services, // You can change this to match the category
            color: Colors.white,
            size: 18,
          ),
          const SizedBox(height: 16),
          Text(title,
              style: const TextStyle(fontSize: 14, color: Colors.white)),
          const Spacer(),
          Text(price,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          const SizedBox(height: 8),
          const Row(children: [
            Text('See More',
                style: const TextStyle(color: Colors.white, fontSize: 14)),
            SizedBox(
              width: 30,
            ),
            Icon(
              Icons
                  .arrow_forward_outlined, // You can change this to match the category
              color: Colors.white,
              size: 18,
            ),
          ])
        ],
      ),
    );
  }
}
