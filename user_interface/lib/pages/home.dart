import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // List of pages (for navigation logic)
  // final List<Widget> _pages = [
  //   Center(child: Text('Home Screen')),
  //   Center(child: Text('Sleep Screen')),
  //   Center(child: Text('Meditate Screen')),
  //   Center(child: Text('Music Screen')),
  //   Center(child: Text('Profile Screen')),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


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
        bottomNavigationBar: _buildBottomNavigationBar(),
      );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex, // Highlight selected tab
      onTap: _onItemTapped, // Handle taps
      selectedItemColor: Colors.purple, // Active icon color
      unselectedItemColor: Colors.grey, // Inactive icon color
      showUnselectedLabels: true, // Show text for all tabs
      type: BottomNavigationBarType.fixed, // Keeps all labels visible
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.nightlight_round),
          label: 'Sleep',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.self_improvement),
          label: 'Meditate',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note),
          label: 'Music',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Afsar',
        ),
      ],
    );
  }

  Widget _recommlist() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Enables horizontal scrolling
          child: Row(
            children: [
              _recommendationCard('Focus', 'Meditation', Color.fromRGBO(187, 247, 208, 1)),
              SizedBox(width: 20),
              _recommendationCard('Happiness', 'Meditation', Color.fromRGBO(254, 243, 199, 1)),
              SizedBox(width: 20),
              _recommendationCard('Focus', 'Meditation', Color.fromRGBO(187, 247, 208, 1)),
              SizedBox(width: 20),
            ],
          ),
        ),
      ],
    ),
  );
}

// Reusable function for recommendation cards
Widget _recommendationCard(String title, String subtitle, Color bgColor) {
  return Container(
    width: 120, // Fixed width to allow scrolling
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 60), // Space for future images
        Text(title, style: TextStyle( fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black)),
        Text(subtitle, style: TextStyle( fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black)),
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
                  Text( 'Daily Thought',  style: TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold ), ),
                  Text( 'Meditation: 3-10 MIN', style: TextStyle( color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal ), ),
                ],
              ),
              OutlinedButton(
                onPressed: () { }, 
                style: OutlinedButton.styleFrom(
                  shape: CircleBorder(), // Makes it a circle
                  side: BorderSide(color: Colors.white), // White outline
                  padding: EdgeInsets.all(10), // Adjust padding for proper spacing
                ),
                child: Icon( Icons.arrow_forward_ios, color: Colors.white, size: 20,),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardtemp(Color bgcolor, String title, String subtitle, String duration, Color btnbg, String btntxt, Color btntxtcolor) {
    return Expanded(
      child: Container(
        height: 200,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: bgcolor, //VAR card bg
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items properly
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image at the top
                  Align(
                    alignment: Alignment.topRight, 
                    child: Image.network(
                      'https://img.freepik.com/free-psd/pink-lotus-flower-blossom-elegance-nature-beauty_632498-46794.jpg?t=st=1743687013~exp=1743690613~hmac=0dcea05f03ab8631e2d6356bb52dc59eb4d215b91b1c6e14cdfc05dd6722d0e9&w=826', 
                      width: 50, height: 50,
                    ),
                  ),
                  // Text in the middle
                Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: btnbg)), //VAR title
                Text(subtitle, style: TextStyle(fontSize: 14, color: btnbg)), //VAR subtitle
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(duration, style: TextStyle(fontSize: 12, color: btnbg)), //VAR duration
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: btnbg, //VAR btn_bg
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                  child: Text(btntxt, style: TextStyle(fontSize: 12, color: btntxtcolor)), //VAR btn_txt
                ),
              ],
            ),
          ],
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
          _cardtemp(Colors.purpleAccent, 'Basics', 'Course', '3-15 MIN', Colors.white, 'START', Colors.black),
          SizedBox(width: 20), // Space between boxes
          _cardtemp(Color.fromRGBO(253, 230, 130, 1), 'Relaxation', 'Music', '3-15 MIN', Colors.black, 'START', Colors.white),
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
