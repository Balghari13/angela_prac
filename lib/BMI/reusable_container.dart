import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  ReusableContainer({super.key, required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: cardChild,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}