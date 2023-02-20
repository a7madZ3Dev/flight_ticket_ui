import 'package:flutter/material.dart';

class ShapeInRight extends StatelessWidget {
  final Color color;
  const ShapeInRight({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        border: Border.all(
          width: 18,
          color: color,
        ),
      ),
    );
  }
}
