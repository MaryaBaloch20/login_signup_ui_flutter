import 'package:flutter/material.dart';
import 'package:login_drawer_signup_ui_flutter/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Homepage"),
        ),
        drawer: MyDrawer(),
      ),
    );
    ;
  }
}
