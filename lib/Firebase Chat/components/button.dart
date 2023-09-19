import 'package:flutter/material.dart';


class BtnWidget extends StatelessWidget {
  final String btnName;
  final VoidCallback onTap;
  final Color color;
  const BtnWidget({super.key, required this.btnName, required this.onTap, required this.color});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onTap,
          minWidth: 200.0,
          height: 42.0,
          child:Text(
            btnName,
          ),
        ),
      ),
    );
  }
}