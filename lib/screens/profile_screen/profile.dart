import 'package:flutter/material.dart';
import '../home_screen/bottom_nav.dart';

class ProfileSettingScreen extends StatefulWidget {
  static const String routeName = 'ProfileSettingScreen';

  @override
  _ProfileSettingScreenState createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile & setting',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1535713875002-d1d0cf377040?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d29tYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Zain s',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'xyz@gmail.com',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            ),
            // General Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'GENERAL',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            buildListTile(
              icon: Icons.favorite,
              title: 'Favourite list',
              onTap: () {
                // Handle tap for Favourite list
              },
            ),
            buildListTile(
              icon: Icons.location_on,
              title: 'Manage locations',
              onTap: () {
                // Handle tap for Manage locations
              },
            ),
            buildListTile(
              icon: Icons.rate_review,
              title: 'My reviews',
              onTap: () {
                // Handle tap for My reviews
              },
            ),
            buildListTile(
              icon: Icons.info,
              title: 'App details',
              subtitle: 'About us, policy, help & support',
              onTap: () {
                // Handle tap for App details
              },
            ),
            buildListTile(
              icon: Icons.star,
              title: 'Rate us',
              onTap: () {
                // Handle tap for Rate us
              },
            ),
            buildlist(
              icon: Icons.delete_forever_outlined,
              title: 'Delete Account',
              onTap: () {
                // Handle tap for Delete Account
              },
            ),
            buildlist(
              icon: Icons.logout_outlined,
              title: 'Logout',
              onTap: () {
                // Handle tap for Logout
              },
            ),
            const SizedBox(height: 32.0),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  ListTile buildListTile({
    required IconData icon,
    required String title,
    String? subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: const Icon(
        Icons.arrow_forward_ios_outlined,
        size: 16,
      ),
      onTap: onTap,
    );
  }
}

ListTile buildlist({
  required IconData icon,
  required String title,
  required VoidCallback onTap,
}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(title),
    onTap: onTap,
  );
}
