import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomNavExample extends StatefulWidget {
  const BottomNavExample({super.key});

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    PageWithImage(title: "Home", imageUrl: "https://picsum.photos/250?image=9"),
    PageWithImage(
      title: "Search",
      imageUrl: "https://picsum.photos/250?image=10",
    ),
    PageWithImage(
      title: "Profile",
      imageUrl: "https://picsum.photos/250?image=11",
    ),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Nav + Network Image")),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

class PageWithImage extends StatelessWidget {
  final String title;
  final String imageUrl;

  const PageWithImage({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 20),
          Image.network(imageUrl),
        ],
      ),
    );
  }
}
