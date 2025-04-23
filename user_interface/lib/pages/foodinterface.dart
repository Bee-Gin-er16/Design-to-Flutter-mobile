import 'package:flutter/material.dart';

class FoodUI extends StatefulWidget {
  const FoodUI({super.key});
  
  @override
  State<FoodUI> createState() => _FoodUI();

}

class _FoodUI extends State<FoodUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.deepOrangeAccent,
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
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _sliderCTA(),
      SizedBox(height: 20),
      _sectionHeader("Fastest Delivery"),
      _fastestDeliveryList(),
      SizedBox(height: 20),
      _sectionHeader("Popular Items"),
      _popularItemsList(),
      SizedBox(height: 60), // For space above bottom nav
    ],
  );
}

Widget _sliderCTA() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 16),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage("https://images.pexels.com/photos/1639565/pexels-photo-1639565.jpeg"),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(Colors.orange.withValues(alpha: 0.4), BlendMode.darken),
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Get your 30% daily discount now",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          ),
          child: Text("Order Now", style: TextStyle(fontSize: 12)),
        ),
      ],
    ),
  );
}

Widget _sectionHeader(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        TextButton(
          onPressed: () {},
          child: Text("See all", style: TextStyle(color: Colors.orange)),
        )
      ],
    ),
  );
}

Widget _fastestDeliveryList() {
  return Container(
    height: 250,
    child: ListView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 16),
      children: List.generate(2, (index) => _fastFoodCard()),
    ),
  );
}

Widget _fastFoodCard() {
  return Container(
    width: 250,
    margin: EdgeInsets.only(right: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: Colors.grey.shade300, width: 2),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
            image: DecorationImage(
              image: NetworkImage("https://images.pexels.com/photos/4958792/pexels-photo-4958792.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.bottomRight,
          child: Container(
            padding: EdgeInsets.all(6),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(8)),
            ),
            child: Text("\$3.00 off delivery", style: TextStyle(color: Colors.white, fontSize: 10)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Crazy Tacos", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Delicious tacos with amazing flavors!", style: TextStyle(color: Colors.grey, fontSize: 12)),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _iconText(Icons.monetization_on, "\$13.00"),
                  _iconText(Icons.timer, "40-50min"),
                  _iconText(Icons.star, "9.5"),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget _iconText(IconData icon, String text) {
  return Row(
    children: [
      Icon(icon, size: 14, color: Colors.grey),
      SizedBox(width: 4),
      Text(text, style: TextStyle(color: Colors.grey, fontSize: 12)),
    ],
  );
}

Widget _popularItemsList() {
  List<Map<String, String>> popular = [
    {
      "title": "Noodles",
      "image": "https://images.pexels.com/photos/2347311/pexels-photo-2347311.jpeg"
    },
    {
      "title": "Burger",
      "image": "https://images.pexels.com/photos/1639565/pexels-photo-1639565.jpeg"
    },
    {
      "title": "Pizza",
      "image": "https://images.pexels.com/photos/845811/pexels-photo-845811.jpeg"
    },
  ];

  return Container(
    height: 160,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 16),
      itemCount: popular.length,
      itemBuilder: (context, index) {
        return Container(
          width: 100,
          margin: EdgeInsets.only(right: 16),
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(popular[index]['image']!),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              SizedBox(height: 8),
              Text(popular[index]['title']!, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        );
      },
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

