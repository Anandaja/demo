import 'package:demo/add_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(mywidget());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
final ButtonStyle style=ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30,inherit: true),
backgroundColor: Colors.green,
foregroundColor: Colors.white);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Demo APP'),centerTitle: true,),
        body:SafeArea(child: 
         Center(
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
                const SizedBox(height: 30,),
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
      
        ),)
      ),
    );
  }
}
