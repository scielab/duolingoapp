import 'package:flutter/material.dart';

class SmallTextWidget extends StatelessWidget {
  final String title;
  final Color color;
  final double size;

  const SmallTextWidget({super.key,required this.title,this.color = Colors.black,this.size = 20});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.normal,
        color: color,
      ),
    );
  }
}