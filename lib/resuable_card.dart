import 'package:flutter/material.dart';

class ReuseAbleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(15.0),
      child: cardChild,
    );
  }

  final Color color;
  ReuseAbleCard({@required this.color, this.cardChild});

  final Widget cardChild;
}