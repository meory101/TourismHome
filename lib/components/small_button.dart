import 'package:flutter/material.dart';
import 'package:tourists/theme/colors.dart';

class SmallButton extends StatefulWidget {
  Color color;
  Widget label;
  SmallButton({required this.color,required this.label});
  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          border: Border.all(color: MyColors().palemain.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(10),
          color: widget.color),
      child: widget.label
    );
  }
}
