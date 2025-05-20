import 'package:flutter/material.dart';

class CardExampleApp extends StatelessWidget {
  const CardExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CardExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Card Example')),
        body: Center(
          child: Card(
            elevation: 4,
            shadowColor: Colors.grey[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              width: 250,
              height: 200,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Flutter Card',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                  ,
                  SizedBox(height: 10,),
                  Text('this is a card example in flutter',
                  textAlign: TextAlign.center,)
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}
