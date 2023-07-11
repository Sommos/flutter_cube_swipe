import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../components/carousel_item.dart';

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
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
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
              items: const [
                // https://colorhunt.co/palette/0719520b666a35a29f97feed
                CarouselItem(
                  color0: 0xFF071952, 
                  color1: 0xFF0B666A, 
                  color2: 0xFF35A29F, 
                  color3: 0xFF97FEED,
                  text: "Cold",
                ),
                // https://colorhunt.co/palette/0081c95bc0f886e5ffffc93c
                CarouselItem(
                  color0: 0xFF0081C9, 
                  color1: 0xFF5BC0F8, 
                  color2: 0xFF86E5FF, 
                  color3: 0xFFFFC93C,
                  text: "Summer",
                ),
                // https://colorhunt.co/palette/181823537fe7c0eef2e9f8f9
                CarouselItem(
                  color0: 0xFF181823, 
                  color1: 0xFF537FE7, 
                  color2: 0xFFC0EEF2, 
                  color3: 0xFFE9F8F9,
                  text: "Sea",
                ),
                // https://colorhunt.co/palette/e966a02b27306554af9575de
                CarouselItem(
                  color0: 0xFFE966A0, 
                  color1: 0xFF2B2730, 
                  color2: 0xFF6554AF, 
                  color3: 0xFF9575DE,
                  text: "Space",
                ),
                // https://colorhunt.co/palette/0a4d6808839505bfdb00ffca
                CarouselItem(
                  color0: 0xFF0A4D68, 
                  color1: 0xFF088395, 
                  color2: 0xFF05BFDB, 
                  color3: 0xFF00FFCA,
                  text: "Gradient",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}