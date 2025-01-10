import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String? imagePath;
  final String? name;
  final String? model;
  final double? price;

  const ProductCard(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.model,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipperPath(),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF353F54), Color(0xFF222834)])),
        child: Stack(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.asset(
                imagePath!,
                width: 124,
                height: 130,
              ),
              Text(name!,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withValues(alpha: 0.6))),
              Text(model!,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              Text("\$${price!.toString()}",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withValues(alpha: 0.6))),
            ]),
            Positioned(
                top: 0,
                right: 0,
                child: Icon(Icons.favorite_border_outlined,
                    color: Colors.white, size: 25))
          ],
        ),
      ),
    );
  }
}

class CustomClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();
    path.moveTo(0, 30);
    path.lineTo(0, h - 20);
    path.quadraticBezierTo(0, h, 20, h);
    path.lineTo(w - 20, h - 25);
    path.quadraticBezierTo(w, h - 30, w, h - 50);
    path.lineTo(w, 20);
    path.quadraticBezierTo(w, 0, w - 20, 0);
    path.lineTo(20, 20);
    path.quadraticBezierTo(0, 30, 0, 50);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
