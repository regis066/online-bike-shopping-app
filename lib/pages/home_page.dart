import 'package:flutter/material.dart';
import 'package:online_bicycle_shopping/widgets/category_container.dart';
import 'package:online_bicycle_shopping/widgets/custom_bottom_navigation_bar.dart';
import 'package:online_bicycle_shopping/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Your Bike",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xFF242C3B),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF34C8E8), Color(0xFF4E4AF2)])),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      backgroundColor: Color(0xFF242C3B),
      body: Container(
        margin: EdgeInsets.only(top: 32),
        child: Stack(
          children: [
            Positioned(
              top: 45,
              right: 0,
              child: Image.asset("assets/images/background1_5x.png"),
            ),
            Column(
              children: [CustomCard(), CategoryContainer()],
            ),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: CustomBottomNavigationBar())
          ],
        ),
      ),
    );
  }
}
