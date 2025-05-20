import 'package:flutter/material.dart';



class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stack Example')),
        body: Center(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(height: 400, width: 400, color: Colors.red),
              Container(
                height: 80,
                width: 80,
                color: const Color.fromARGB(255, 9, 5, 236),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
