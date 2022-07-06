import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Homepage"),
        ),
        drawer: const Drawer(backgroundColor: Colors.blue),
      ),
    );
    ;
  }
}
