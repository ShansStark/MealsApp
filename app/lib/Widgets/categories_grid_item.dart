import 'package:flutter/material.dart';
import 'package:app/Models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
      {super.key, required this.category, required this.onSelectedCategory});

  final Category category;
  final void Function() onSelectedCategory;

  @override
  Widget build(context) {
    return InkWell(
      onTap: onSelectedCategory,
      splashColor: Theme.of(context).canvasColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(colors: [
              category.color.withOpacity(0.65),
              category.color.withOpacity(0.95)
            ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
        child: Text(
          category.title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.inverseSurface),
        ),
      ),
    );
  }
}
