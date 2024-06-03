import 'package:assistant/constants/colors.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.controller,
    this.obscure = false,
    this.hint = "",
  });

  final TextEditingController controller;
  final bool obscure;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hint,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black54),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black87),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}

class CircularDesign extends StatelessWidget {
  final double x;
  final double y;
  final double z;
  final double height;
  final double width;
  final double opacity;
  final Color color;
  const CircularDesign({
    super.key,
    required this.height,
    required this.width,
    this.x = 0,
    this.y = 0,
    this.z = 0,
    this.opacity = 0.1,
    this.color = MyColors.LightPurple,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      transform: Matrix4.translationValues(x, y, z),
      decoration: BoxDecoration(
        color: color.withOpacity(opacity),
        borderRadius: BorderRadius.circular((height > width ? height : width)),
      ),
    );
  }
}

class BannerType extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.lineTo(0, h-100);
    path.quadraticBezierTo(
      w/2,
      h,
      w, h-100
    );
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

