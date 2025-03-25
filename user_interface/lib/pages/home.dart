import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: appBar(),
        backgroundColor: Colors.greenAccent,
      );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'This is appbar',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 88, 209, 104),
      elevation: 0.0,
      centerTitle: true,
    );
  }

}
