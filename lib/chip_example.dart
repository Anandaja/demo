import 'package:flutter/material.dart';

class ChipExampleApp extends StatelessWidget {
  const ChipExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChipDemoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ChipDemoPage extends StatefulWidget {
  const ChipDemoPage({super.key});

  @override
  State<ChipDemoPage> createState() => _ChipDemoPageState();
}

class _ChipDemoPageState extends State<ChipDemoPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Chip Widgets")),
      body: Center(
        child: Chip(label: const Text('flutter chip ',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),),
        ),
        backgroundColor: Colors.blue,
        elevation: 4,
        shadowColor: Colors.grey[800],
        padding: const EdgeInsets.all(10),
        ),
      )
    );
  }
}
