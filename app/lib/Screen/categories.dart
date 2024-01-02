import 'package:app/Models/category.dart';
import 'package:app/Screen/meals.dart';
import 'package:app/Widgets/categories_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:app/Data/sample_data.dart';
import 'package:app/Models/meal.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({
    super.key,
    //required this.onToggleFavorite, //USED BEFORE USING PROVIDER CONCEPT
    required this.availableMeals,
  });

  //final void Function(Meal meal) onToggleFavorite; //USED BEFORE USING PROVIDER CONCEPT
  final List<Meal> availableMeals;

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _selectCategory(BuildContext context, Category category) {
    //Navigator.push(context, route)  works same as the on below.

    final filteredMeals = widget.availableMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => MealsScreen(
        //onToggleFavorite: onToggleFavorite, //USED BEFORE USING PROVIDER CONCEPT
        meals: filteredMeals,
        title: category.title,
      ),
    ));
  }

  @override
  Widget build(context) {
    //Color number = Colors.deepPurpleAccent;
    /*  return  */ /* Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 62, 84),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Select Category'),
      ), */
    /* body: */
    return AnimatedBuilder(
        animation: _animationController,
        child: GridView(
          padding: const EdgeInsets.all(25),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            crossAxisSpacing: 25,
            //mainAxisExtent: 25,
            mainAxisSpacing: 40,
          ),
          children: [
            for (final category in existingCategory)
              CategoryGridItem(
                category: category,
                onSelectedCategory: () {
                  _selectCategory(context, category);
                },
              )
          ],
          //),
        ),
        builder: (context, child) => SlideTransition(
              position: Tween(
                begin: const Offset(0, 0.35),
                end: const Offset(0, 0),
              ).animate(CurvedAnimation(
                  parent: _animationController, curve: Curves.easeInExpo)),
              child: child,
            )
        /* Padding(
              padding: EdgeInsets.only(
                top: 100 - _animationController.value * 100,
              ),
              child: child,
            ) */
        );
  }
}
    //Color number = Colors.deepPurpleAccent;
   /*  return  *//* Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 62, 84),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Select Category'),
      ), */
        /* body: */
        /* return GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        crossAxisSpacing: 25,
        //mainAxisExtent: 25,
        mainAxisSpacing: 40,
      ),
      children: [
        for (final category in existingCategory)
          CategoryGridItem(
            category: category,
            onSelectedCategory: () {
              _selectCategory(context, category);
            },
          )
      ],
      //),
    );
  }
} */
