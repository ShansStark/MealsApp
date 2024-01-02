import 'package:app/Screen/meal_details.dart';
import 'package:app/Widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:app/Models/meal.dart';
//import 'package:app/Data/sample_data.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.meals,
    this.title,
    //required this.onToggleFavorite, //USED BEFORE USING PROVIDER CONCEPT
  });

  final String? title;
  final List<Meal> meals;
  //final void Function(Meal meal) onToggleFavorite; //USED BEFORE USING PROVIDER CONCEPT

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (cx) => MealDetail(
              // onToggleFavorite: onToggleFavorite, //USED BEFORE USING PROVIDER CONCEPT
              meal: meal,
            )));
  }

  @override
  Widget build(BuildContext context) {
    //FOR DISPLAYING THE MEAL CONTENT
    Widget content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealItem(
              meal: meals[index],
              onSelectMeal: (context, meal) {
                selectMeal(context, meal);
              },
            ));
    // DISPLAYING THE CONTENT IF THERE IS NO MEALS
    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Sorry!  No Meals list here yet ...',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(height: 25),
            Center(
              child: Text(
                'Try other category Please...',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            ),
          ],
        ),
      );
    }
    if (title == null) {
      return content;
    }
    return Scaffold(
      appBar: AppBar(title: Text(title!)),
      body: content,
    );
  }
}
