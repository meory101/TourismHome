import 'package:flutter/material.dart';
import 'package:tourists/theme/colors.dart';

class RecButton extends StatefulWidget {
  Color color;
  Widget label;
  RecButton({required this.color, required this.label});
  @override
  State<RecButton> createState() => _RecButtonState();
}

class _RecButtonState extends State<RecButton> {
  @override
  Widget build(BuildContext context) {
      return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 10),
      width: 200,
      height: 60,
      decoration: BoxDecoration(
          border: Border.all(color: MyColors().palemain.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(10),
          color: widget.color),
      child: widget.label
    );
  }
}