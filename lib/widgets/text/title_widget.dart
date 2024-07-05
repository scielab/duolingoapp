
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final double size;
  const TitleWidget({super.key,required this.title,this.size = 40});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}