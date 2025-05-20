import 'package:flutter/material.dart';


class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TabBarExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Three tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar demo"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.search), text: "Search"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                const Text('Home Page'),

                const SizedBox(height: 30,),
                OutlinedButton(onPressed: () {}, child: const Text('View Gallery'))
              ],
            ),
            Center(child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                maxLength: 10,
                decoration: InputDecoration(hintText: 'Search',prefixIcon: const Icon(  Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),
            ),
            )),


            Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container( 
                  height: 100,
                  width: 100,
                  child: Icon(Icons.person_2_rounded,size: 75,),
                )
              ],
            )),
          ],
        ),
      ),
    );}
   
}
