import 'package:flutter/material.dart';
import 'package:tourists/pages/home.dart';

main() {
  runApp(TourismHome());
}

class TourismHome extends StatefulWidget {
  const TourismHome({super.key});

  @override
  State<TourismHome> createState() => _TourismHomeState();
}

class _TourismHomeState extends State<TourismHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}