import 'package:flutter/material.dart';

class gestureExample extends StatelessWidget {
  const gestureExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Gesture Example')),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centers all items vertically
            children: [
              OutlinedButton(
                onPressed: () {
                  print('hello');
                },
                child: const Text('Tap me!'),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  print('Container tapped!');
                },
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'Tap me!!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  print('Haii tapped!');
                },
                child: Container(
                  width: 100,
                  height: 50,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      'Tap me!!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
