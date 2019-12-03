import 'package:flutter/material.dart';
class ReUseAbleCard extends StatelessWidget {
  final color;
  final iconsName;
  final String textInput;
  final cardChild;
  final Function onTap;

  ReUseAbleCard(
      {@required this.color,
        this.cardChild,
        this.iconsName,
        this.onTap,
        this.textInput});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(15),

      )

    );
  }
}