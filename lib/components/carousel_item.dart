import "package:flutter/material.dart";

class CarouselItem extends StatelessWidget {
  final int color0;
  final int color1;
  final int color2;
  final int color3;
  final String text;

  const CarouselItem({
    super.key,
    required this.color0,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(color0), 
            Color(color1), 
            Color(color2), 
            Color(color3),
          ],
          stops: const [
            0.25, 
            0.5, 
            0.75, 
            1.0,
          ],
        ),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: "Allura",
            fontSize: 90,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      )
    );
  }
}