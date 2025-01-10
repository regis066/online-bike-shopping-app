import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // Allows widgets to overflow the parent
      children: [
        ClipPath(
          clipper: CustomClipperPath(),
          child: Container(
            height: 104,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF363E51), Color(0xFF181C24)],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 80), // Leave space for the floating item
                _buildNavItem("assets/images/map.fill.svg"),
                _buildNavItem("assets/images/cart.fill.svg"),
                _buildNavItem("assets/images/person.fill.svg"),
                _buildNavItem("assets/images/doc.text.fill.svg"),
              ],
            ),
          ),
        ),
        Positioned(
          left: 17,
          bottom: 20, // Adjust to ensure it overlaps nicely
          child: Transform.translate(
            offset: Offset(0, -10), // Adjust position
            child: ClipPath(
              clipper: BottomNavItemCardClipper(),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF34C8E8), Color(0xFF4E4AF2)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      // Shadow color
                      offset: Offset(0, 4),
                      // Shadow offset
                      blurRadius: 10,
                      // Blur radius
                      spreadRadius: 2, // Spread radius
                    ),
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/images/electric.svg",
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNavItem(String asset) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 28, right: 28, bottom: 22),
      child: SvgPicture.asset(
        asset,
        width: 20,
        height: 20,
      ),
    );
  }
}

class BottomNavItemCardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();
    path.moveTo(0, 20);
    path.lineTo(0, h - 10);
    path.quadraticBezierTo(0, h, 10, h);
    path.lineTo(w - 10, h - 15);
    path.quadraticBezierTo(w, h - 20, w, h - 30);
    path.lineTo(w, 10);
    path.quadraticBezierTo(w, 0, w - 10, 0);
    path.lineTo(10, 15);
    path.quadraticBezierTo(0, 20, 0, 30);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height / 4);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
