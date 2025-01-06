import "package:flutter/material.dart";
import "package:online_bicycle_shopping/widgets/category_item_card.dart";

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CategoryItemCard(text: "All", verticalOffset: 32),
          CategoryItemCard(svgPath: "assets/images/electric.svg", verticalOffset: 22),
          CategoryItemCard(svgPath: "assets/images/road.svg", verticalOffset: 12),
          CategoryItemCard(svgPath: "assets/images/mountain.svg", verticalOffset:  2),
          CategoryItemCard(svgPath: "assets/images/accessory.svg", verticalOffset: -10),

        ],
      ),
    );
  }
}