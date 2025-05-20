import 'package:flutter/material.dart';

void main() => runApp(const Nav());

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavDrawer());
  }
}

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigation Drawer Example")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'My Drawer Header',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            CustomDrawerItem(icon: Icons.home, text: 'Home'),
            CustomDrawerItem(icon: Icons.settings, text: 'Settings'),
            CustomDrawerItem(icon: Icons.info, text: 'About'),
          ],
        ),
      ),
      body: const Center(child: Text('Home Page Content')),
    );
  }
}

// ✅ Custom Widget for Drawer Item
class CustomDrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomDrawerItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: () {
        // Handle navigation or any logic here
        Navigator.pop(context); // Close the drawer
        print('$text tapped');
      },
    );
  }
}
