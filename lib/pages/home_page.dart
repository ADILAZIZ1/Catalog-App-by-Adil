import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final name = "Adil";
  final days = "30";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Text("Welcome to $days days of flutter by $name"),
      ),
      drawer: Drawer(),
    );
  }
}
