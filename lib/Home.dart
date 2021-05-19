import 'package:flutter/material.dart';
import 'package:plannus_proto/NavBar.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PlanNUS"),
        toolbarHeight: 40,
      ),
      drawer: NavBar(),
    );
  }
}
