import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 350,
        aspectRatio: 16/9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF071952), 
                Color(0xFF0B666A), 
                Color(0xFF35A29F), 
                Color(0xFF97FEED),
              ],
              stops: [
                0.25, 
                0.5, 
                0.75, 
                1.0,
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF0081C9), 
                Color(0xFF5BC0F8), 
                Color(0xFF86E5FF), 
                Color(0xFFFFC93C),
              ],
              stops: [
                0.25, 
                0.5, 
                0.75, 
                1.0,
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF181823), 
                Color(0xFF537FE7), 
                Color(0xFFC0EEF2), 
                Color(0xFFE9F8F9),
              ],
              stops: [
                0.25, 
                0.5, 
                0.75, 
                1.0,
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFE966A0),
                Color(0xFF2B2730), 
                Color(0xFF6554AF), 
                Color(0xFF9575DE),
              ],
              stops: [
                0.25,
                0.5, 
                0.75,
                1.0,
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF0A4D68),
                Color(0xFF088395), 
                Color(0xFF05BFDB), 
                Color(0xFF00FFCA),
              ],
              stops: [
                0.25,
                0.5, 
                0.75,
                1.0,
              ],
            ),
          ),
        ),
      ],
    );
  }
}

