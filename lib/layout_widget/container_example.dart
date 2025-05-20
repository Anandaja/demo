import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('container')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [


             Container(
              margin: const EdgeInsets.all(8),
              width: 100,
              height: 100,
              color: Colors.amber[900],
              padding: EdgeInsets.all(8),
              child: const Text('hello'),

             ),
              Container(
              margin: const EdgeInsets.all(8),
              width: 80,
              height: 80,
              color: Colors.amber[600],
              padding: EdgeInsets.all(8),
              child: const Text('hello'),

             ),
              Container(
              margin: const EdgeInsets.all(8),
              width: 40,
              height: 40,
              color: Colors.amber[300],
              padding: EdgeInsets.all(8),
              child: const Text('hello'),

             )
            ],
          ),
        ),
      ),
    );
  }
}
