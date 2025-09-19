import 'package:flutter/material.dart';
import 'package:home_cleaning/screens/categories/description.dart';

class AcRepair extends StatelessWidget {
  static const String routeName = 'AcRepair';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Ac Repair',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.filter_list),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search here',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Subcategories',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      CategoryButton(
                        icon: Icon(Icons.ac_unit, color: Colors.blue),
                        title: 'Ac Repair',
                        onPressed: () {
                          // Add your logic here
                          print('Ac Repair clicked');
                        },
                      ),
                      SizedBox(width: 12.0),
                      CategoryButton(
                        icon: Icon(Icons.settings, color: Colors.orange),
                        title: 'Installation',
                        onPressed: () {
                          // Add your logic here
                          print('Installation clicked');
                        },
                      ),
                      SizedBox(width: 12.0),
                      CategoryButton(
                        icon: Icon(Icons.air, color: Colors.green),
                        title: 'Hanging',
                        onPressed: () {
                          // Add your logic here
                          print('Hanging clicked');
                        },
                      ),
                      SizedBox(width: 12.0),
                      CategoryButton(
                        icon: Icon(Icons.settings_suggest, color: Colors.red),
                        title: 'Servicing',
                        onPressed: () {
                          // Add your logic here
                          print('Servicing clicked');
                        },
                      ),
                      SizedBox(width: 12.0),
                      CategoryButton(
                        icon: Icon(Icons.brush, color: Colors.purple),
                        title: 'Painting',
                        onPressed: () {
                          // Add your logic here
                          print('Painting clicked');
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ServiceCard1(
                image: 'assets/images/background.png',
                title: 'Ac Deep Cleaning',
                duration: '00:30 minute',
                serviceMenRequired: 'Min 2 servicemen required',
                price: '12.0',
                description: 'Foamjet technology removes dust 2x deeper.',
                onCardTap: () {
                  // Navigate to description screen or perform other actions
                  Navigator.pushNamed(context, ServiceDetailPage.routeName);
                },
                onAddTap: () {
                  // Logic to add the item to the cart
                  print('Item added to cart');
                },
              ),
              ServiceCard1(
                image: 'assets/images/background.png',
                title: 'Ac Deep Cleaning',
                duration: '00:30 minute',
                serviceMenRequired: 'Min 2 servicemen required',
                price: '12.0',
                description: 'Foamjet technology removes dust 2x deeper.',
                onCardTap: () {
                  // Navigate to description screen or perform other actions
                  Navigator.pushNamed(context, ServiceDetailPage.routeName);
                },
                onAddTap: () {
                  // Logic to add the item to the cart
                  print('Item added to cart');
                },
              ),
              ServiceCard1(
                image: 'assets/images/background.png',
                title: 'Ac Deep Cleaning',
                duration: '00:30 minute',
                serviceMenRequired: 'Min 2 servicemen required',
                price: '12.0',
                description: 'Foamjet technology removes dust 2x deeper.',
                onCardTap: () {
                  // Navigate to description screen or perform other actions
                  Navigator.pushNamed(context, ServiceDetailPage.routeName);
                },
                onAddTap: () {
                  // Logic to add the item to the cart
                  print('Item added to cart');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final Icon icon;
  final String title;
  final VoidCallback onPressed;

  CategoryButton(
      {required this.icon, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            icon,
            SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCard1 extends StatelessWidget {
  final String image;
  final String title;
  final String duration;
  final String serviceMenRequired;
  final String price;
  final String? description;
  final VoidCallback onCardTap;
  final VoidCallback onAddTap;

  ServiceCard1({
    required this.image,
    required this.title,
    required this.duration,
    required this.serviceMenRequired,
    required this.price,
    this.description,
    required this.onCardTap,
    required this.onAddTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardTap,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '₹$price',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Icon(Icons.access_time, size: 16),
                      SizedBox(width: 8.0),
                      Text(duration),
                      SizedBox(width: 16.0),
                      Icon(Icons.people, size: 16),
                      SizedBox(width: 8.0),
                      Text(serviceMenRequired),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  if (description != null) ...[
                    Text(
                      description!,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 16.0),
                  ],
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: onAddTap,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Button color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text(
                          'Add',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
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
