import 'package:demo/add_image.dart';
import 'package:demo/card_example.dart';
import 'package:demo/chip_example.dart';
import 'package:demo/gesture_detect.dart';
import 'package:demo/layout_widget/container_example.dart';
import 'package:demo/layout_widget/slider.dart';
import 'package:demo/layout_widget/stack.dart';
import 'package:demo/layout_widget/tab_bar.dart';
import 'package:demo/nav/nav_drawer.dart';
import 'package:demo/provider/counter/counter.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(ContainerExample());
  // runApp(mywidget());
  // runApp(MyApp());
  // runApp(const StackExample());
  // runApp(const SnackBarApp());
  // runApp(const SliderApp());
  // runApp(const TabBarApp());
  // runApp(const BottomNav());
  //  runApp(const ChipExampleApp());
  // runApp(const CardExample());
  // runApp(gestureExample());
  // runApp(Nav());
   runApp(const CounterApp());



}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 30, inherit: true),
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Demo APP'), centerTitle: true),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: style,
                  child: const Text('Hello DQ'),
                  onPressed: () {
                    print('Hello .. DQ');
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: style,
                  child: const Text('Hello FAFA'),
                  onPressed: () {
                    print('Hello ....FAFA');
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: style,
                  child: const Text('Hello Rambo'),
                  onPressed: () {
                    print('Hello ...Rambo');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
