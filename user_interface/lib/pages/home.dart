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
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            _greeting(),
            SizedBox(height: 20,),
            _maincta(),
          ],
        ),
      );
  }

  Widget _maincta() {
    return Row(
      children: [
        Container(
          width: 75,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.purpleAccent,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Text('Basics'),
              Text('Course'),
              Text('3-15MIN'),
            ],
          ),
        ),
        Container(
          width: 75,
          height: 150,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(253, 230, 130, 1),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Text('Relaxation'),
              Text('Music'),
              Text('3-15MIN'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _greeting() {
    return Padding(
      padding: EdgeInsets.only(left: 20), // Apply left padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Good Morning, Afsar',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'We wish you have a good day',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'Silent Moon',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
    );
  }

  //END OF LINE
}
