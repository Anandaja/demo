import 'package:flutter/material.dart';


class SnackBarApp extends StatelessWidget {
  const SnackBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('SnackBar Example')),
        body: Center(child: SnackButton()),
      ),
    );
  }
}

class SnackButton extends StatelessWidget {
  const SnackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final snackBar = SnackBar(
          content: const Text('This is a SnackBar!'),
          duration: const Duration(seconds: 5), // ⏱️ 5 seconds duration
          behavior: SnackBarBehavior.floating, // Optional: makes it float
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: const Text('Show SnackBar'),
    );
  }
}
