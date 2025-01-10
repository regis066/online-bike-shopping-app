import "dart:ui";

import "package:flutter/material.dart";

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32),
      child: ClipPath(
        clipper: CustomCardClipPath(),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
          child: Container(
            padding: EdgeInsets.only(top: 30, left: 16, right: 15, bottom: 24),
            decoration: BoxDecoration(
              color: Color(0xFF353F54).withValues(alpha: 0.5),
              // color: Colors.transparent,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/bicycle01.png"),
                Text("30% Off",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withValues(alpha: 0.6),
                        fontSize: 26))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCardClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();

    path.lineTo(0, h - 20);
    path.quadraticBezierTo(0, h, 20, h);
    path.lineTo(w - 20, h - 35);
    path.quadraticBezierTo(w, h - 35, w, h - 55);
    path.lineTo(w, 20);
    path.quadraticBezierTo(w, 0, w - 20, 0);
    path.lineTo(20, 0);
    path.quadraticBezierTo(0, 0, 0, 20);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
