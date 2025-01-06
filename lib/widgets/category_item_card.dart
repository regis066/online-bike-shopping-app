import "dart:ffi";
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class CategoryItemCard extends StatelessWidget {
  final String? svgPath;
  final String? text;
  final double verticalOffset;

  const CategoryItemCard(
      {super.key, this.svgPath, this.text, this.verticalOffset = 0.0});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, verticalOffset),
      child: Container(
        width: 50,
        height: 50,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF353F54), Color(0xFF222834)]),
            borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.4),
            blurRadius: 10,
            offset: Offset(0, 8)
          )
        ]),
        child: Center(
          child: svgPath != null
              ? SvgPicture.asset(svgPath!, width: 30, height: 30)
              : (text != null
                  ? Text(
                      text!,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  : SizedBox.shrink()),
        ),
      ),
    );
  }
}
