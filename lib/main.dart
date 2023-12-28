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
          elevation: 10,
          title: Text('Roger'),
          centerTitle: true,
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.menu, size: 22)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.message, size: 25)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 25))
          ],
        ),
        body: Center(
            child: Text(
          'Hello roger',
          style: TextStyle(fontSize: 40),
        )));
  }
}
