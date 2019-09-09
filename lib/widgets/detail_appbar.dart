import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Stack(
        children: <Widget>[
          AppBarClipper(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.arrow_back, color: Colors.white),
                  Icon(Icons.share, color: Colors.white),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(maxRadius: 45),
            ),
          ),
        ],
      ),
    );
  }
}

class AppBarClipper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/TuffleSalad.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      clipper: CustomAppBarClipper(),
    );
  }
}

class CustomAppBarClipper extends CustomClipper<Path> {
  final double offset = 80;
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height);
    path.quadraticBezierTo(size.width - 100, size.height, size.width, size.height / 1.8);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
