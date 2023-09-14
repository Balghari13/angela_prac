import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final VoidCallback? onPress;
  ReusableContainer({super.key, required this.color, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}