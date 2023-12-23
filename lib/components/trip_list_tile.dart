import 'package:flutter/material.dart';

class TripListTile extends StatefulWidget {
  final ImageProvider image;
  final Text title;
  final Widget content;
  TripListTile(
      {required this.image, required this.title, required this.content});
  @override
  State<TripListTile> createState() => _TripListTileState();
}

class _TripListTileState extends State<TripListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: const Color.fromARGB(255, 217, 217, 217),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: widget.image, fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [widget.title, widget.content],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
