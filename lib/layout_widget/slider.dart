import 'package:flutter/material.dart';

class SliderApp extends StatelessWidget {
  const SliderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SliderAlertHome());
  }
}

class SliderAlertHome extends StatefulWidget {
  const SliderAlertHome({super.key});

  @override
  State<SliderAlertHome> createState() => _SliderAlertHomeState();
}

class _SliderAlertHomeState extends State<SliderAlertHome> {
  double _sliderValue = 10.0;

  void _showAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Slider Value"),
          content: Text("Selected value: ${_sliderValue.toStringAsFixed(1)}"),
          actions: [
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Slider & Alert Example")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text("Move the slider:", style: TextStyle(fontSize: 20)),
            Slider(
              min: 0,
              max: 100,
              value: _sliderValue,
              divisions: 100,
              label: _sliderValue.toStringAsFixed(1),
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: _showAlert,
              child: const Text("Show Alert"),
            ),
          ],
        ),
      ),
    );
  }
}
