
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
      backgroundColor: const Color.fromARGB(255, 255, 138, 177),
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
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 120),
    child: Container(
      height: 600,
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //TODO put img on top then sizedbox after
          Align(
            alignment: Alignment.center,
            child: Image.network(
              "https://img.freepik.com/free-vector/email-campaign-concept-illustration_114360-3937.jpg?t=st=1744252564~exp=1744256164~hmac=d99552abdd9a66564ea34480e3613bebe652e8e102d83e7fb2f349e6bebef480&w=826",
              width: 100, height: 150,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 400, // wider for the title
            child: Text(
              "You only need two steps to enjoy our wonderful newsletter",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 20), 
          SizedBox(
            width: 300, 
            child: Text(
              "Give us your address and confirm the message by clicking the link in the email",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 200,
            height: 50, 
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), 
                hintText: 'Enter email address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            child: Text(
              "SUBSCRIBE NOW",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
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