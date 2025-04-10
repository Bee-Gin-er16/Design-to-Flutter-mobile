import 'package:flutter/material.dart';

class Newsletter extends StatefulWidget {
  const Newsletter({super.key});

  @override
  State<Newsletter> createState() => _Newsletter();

}

class _Newsletter extends State<Newsletter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.pinkAccent,
      body: ListView(
        children: [
          _maincontent(),
          SizedBox(height: 20,),
        ],
      ),
    );
  }

}

Widget _maincontent() {
  return Padding(
    padding: EdgeInsets.all(50),
    child: Expanded(
      child: Container(
        height: 210,
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is newsletter"),
          ],
        ),
      ),
    ),
  );
}

AppBar appBar() {
    return AppBar(
      title: Text(
        'Newsletter',
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