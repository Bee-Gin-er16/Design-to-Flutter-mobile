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
            SizedBox(height: 20,),
            _daily(),
            SizedBox(height: 20,),
            _recomm(),
            SizedBox(height: 20,),
            _recommlist(),
          ],
        ),
      );
  }

  //TODO might change to listview
  Widget _recommlist() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(187,247,208,1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Focus', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),),
                Text('Meditation', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),),
              ],
            ),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(254, 243, 199, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Happiness', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),),
                Text('Meditation', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),),
              ],
            ),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(187,247,208,1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Focus', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),),
                Text('Meditation', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _recomm() {
    return Padding(
      padding: EdgeInsets.only(left: 20), // Apply left padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recommended for You',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  //TODO Make/implement arrow icon round
  Widget _daily() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Expanded(
        child: Container(
          height: 110,
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: const Color.fromARGB(167, 0, 0, 0),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Daily Thought', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'Meditation: 3-10 MIN', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Text2', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _maincta() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20), // Left & Right Padding
      child: Row(
        children: [
          // First Box (Basics)
          Expanded(
            child: Container(
              height: 200,
              padding: EdgeInsets.all(15), // Inner padding
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items properly
                crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                children: [
                  // Image at the top
                  // Align(
                  //   alignment: Alignment.topRight, 
                  //   child: Image.network(
                  //     'https://www.svgrepo.com/show/287301/lotus.svg', 
                  //     width: 40, height: 40,
                  //   ),
                  // ),
                  // Text in the middle
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Basics', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                      Text('Course', style: TextStyle(fontSize: 14, color: Colors.white70)),
                    ],
                  ),
                  // Time & Button at the bottom
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('3-15 MIN', style: TextStyle(fontSize: 12, color: Colors.white)),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                        child: Text('START', style: TextStyle(fontSize: 12, color: Colors.black)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20), // Space between boxes
          Expanded(
            child: Container(
              height: 200,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color.fromRGBO(253, 230, 130, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Align(
                  //   alignment: Alignment.topRight,
                  //   child: Image.network(
                  //     'https://www.svgrepo.com/show/287341/headphones.svg', 
                  //     width: 40, height: 40,
                  //   ),
                  // ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Relaxation', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
                      Text('Music', style: TextStyle(fontSize: 14, color: Colors.black87)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('3-15 MIN', style: TextStyle(fontSize: 12, color: Colors.black)),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                        child: Text('START', style: TextStyle(fontSize: 12, color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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
