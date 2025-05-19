import 'package:flutter/material.dart';

void main() {
  runApp( const mywidget());
}

class mywidget extends StatelessWidget {
  const mywidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: const  Text('image'),),
      body: Center(child: Column(
        children: [
          Expanded(child: Image.asset("assets/images/onboarding one.jpeg",width: 200,height: 100,)),
          const SizedBox(height: 5,),
           Expanded(child: Image.asset("assets/images/on boarding two.jpeg",width: 300,height: 200,))
          
        ],
      ),),),
    );
  }
}
