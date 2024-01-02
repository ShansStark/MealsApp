import 'package:flutter/material.dart';

class MealsItemTrait extends StatelessWidget {
  const MealsItemTrait({
    super.key,
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 15,
          color: Colors.amberAccent,
          grade: BorderSide.strokeAlignInside,
          opticalSize: 20,
        ),
        const SizedBox(width: 5),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
