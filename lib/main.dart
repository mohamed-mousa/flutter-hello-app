// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: SimpleProject(),
    );
  }
}

class SimpleProject extends StatelessWidget {
  const SimpleProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('App name'),
          centerTitle: true,
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.menu, size: 22)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.message, size: 25)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 25))
          ],
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0),
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(0),
                    bottomLeft: Radius.circular(30)),
              ),
              child: Text(
                'Hello roger',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(20),
              child: Text(
                'Last news', //
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ));
  }
}
