import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:akram2/akram_theme/ak_Color.dart';
import 'package:flutter/material.dart';

class HeartClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width / 2, size.height);
    path.lineTo(0, size.height / 2);
    path.quadraticBezierTo(0, 0, size.width / 2, size.height / 4);
    path.quadraticBezierTo(size.width, 0, size.width, size.height / 2);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class HeartShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HeartClipper(),
      child: Container(
        color: AppColor.primary, // لون القلب
        width: 200.0,
        height: 200.0,
      ),
    );
  }
}

