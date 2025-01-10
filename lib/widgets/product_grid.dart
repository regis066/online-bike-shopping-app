import "package:flutter/material.dart";
import "package:online_bicycle_shopping/widgets/product_card.dart";

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        childAspectRatio: 0.7,
        padding: EdgeInsets.only(top: 50),
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        children: [
          ProductCard(
            imagePath:
                "assets/images/robert-bye-tG36rvCeqng-unsplash-removebg-preview 5.png",
            name: "Road Bike",
            model: "PEUGEOT - LR01",
            price: 1999.99,
          ),
          ProductCard(
            imagePath:
                "assets/images/cobi-krumholz-mZKF19ydEzk-unsplash-removebg-preview 1.png",
            name: "Road Helmet",
            model: "SMITH - Trade",
            price: 120,
          ),
          ProductCard(
            imagePath:
                "assets/images/mikkel-bech-yjAFnkLtKY0-unsplash-removebg-preview 3.png",
            name: "Mountain Bike",
            model: "PILOT - Chromoly",
            price: 1999.99,
          ),
          ProductCard(
            imagePath:
                "assets/images/robert-bye-tG36rvCeqng-unsplash-removebg-preview 5.png",
            name: "Road Bike",
            model: "PEUGEOT - LR01",
            price: 1999.99,
          ),
          ProductCard(
            imagePath:
                "assets/images/cobi-krumholz-mZKF19ydEzk-unsplash-removebg-preview 1.png",
            name: "Road Helmet",
            model: "SMITH - Trade",
            price: 120,
          ),
          ProductCard(
            imagePath:
                "assets/images/mikkel-bech-yjAFnkLtKY0-unsplash-removebg-preview 3.png",
            name: "Mountain Bike",
            model: "PILOT - Chromoly",
            price: 1999.99,
          )
        ],
      ),
    );
  }
}
