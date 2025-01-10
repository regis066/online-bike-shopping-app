import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_bicycle_shopping/widgets/category_container.dart';
import 'package:online_bicycle_shopping/widgets/custom_bottom_navigation_bar.dart';
import 'package:online_bicycle_shopping/widgets/custom_card.dart';
import 'package:online_bicycle_shopping/widgets/product_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
            child: SvgPicture.asset(
              "assets/images/search_icon.svg",
              width: 20,
              height: 20,
            ),
          )
        ],
      ),
      backgroundColor: Color(0xFF242C3B),
      body: Stack(
        children: [
          Positioned(
            top: 45,
            right: 0,
            child: Image.asset("assets/images/background2x.png"),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [CustomCard(), CategoryContainer(), ProductGrid()],
            ),
          ),
          Positioned(
              bottom: 0, right: 0, left: 0, child: CustomBottomNavigationBar())
        ],
      ),
    );
  }
}
