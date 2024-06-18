import 'package:assistant/useEverywhere/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    this.color = MyColors.Navy,
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

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BannerType(),
      child: Container(
        decoration: const BoxDecoration(
          color: MyColors.Navy,
        ),
        height: 200,
        width: double.infinity,
        child: Center(
          child: Text(
            "${title}",
            style: GoogleFonts.aBeeZee(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: MyColors.Background,
            ),
          ),
        ),
      ),
    );
  }
}




class DrawerIcon extends StatelessWidget {
  const DrawerIcon({
    super.key,
    required this.width,
    this.color = Colors.black,
  });

  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        transform: Matrix4.translationValues(-width/2 + 30, -60, 0),
        child: GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Icon(Icons.menu, size: 30, color: color,),
        ),
      );
    });
  }
}
