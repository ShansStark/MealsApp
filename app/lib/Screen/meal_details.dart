import 'package:app/Models/meal.dart';
import 'package:app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/provider/favorite_provider.dart';

class MealDetail extends ConsumerWidget {
  const MealDetail({
    super.key,
    required this.meal,
    //required this.onToggleFavorite, //USED BEFORE USING PROVIDER CONCEPT
  });
  final Meal meal;
  //final void Function(Meal meal) onToggleFavorite; //USED BEFORE USING PROVIDER CONCEPT

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteMeal = ref.watch(favoriteMealsProvider);
    final isFavorite = favoriteMeal.contains(meal);
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(
            onPressed: () {
              final wasAdded = ref
                  .read(favoriteMealsProvider.notifier)
                  .toggleMealFavoriteStatus(
                      meal); //NEW ADDED CONCEPT OF PROVIDERs
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(wasAdded
                    ? 'Added as Favorite'
                    : 'Meal removed from Favorite!'),
              ));
            },
            icon: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (child, animation) => RotationTransition(
                turns: Tween<double>(begin: 0, end: 100).animate(animation),
                child: child,
              ),
              child: Icon(
                isFavorite ? Icons.star : Icons.star_border,
                color: Theme.of(context).colorScheme.onBackground,
                key: ValueKey(isFavorite),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: meal.id,
              child: Image.network(
                meal.imageUrl,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'INGREDENTS',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: Colors.amber, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            for (final ingredients in meal.ingredients)
              Text(
                ingredients,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.copyWith().secondary),
              ),
            const SizedBox(height: 25),
            Text(
              'STEPS',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: Colors.amber, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),
            for (final mealSteps in meal.steps)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  mealSteps,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
            const SizedBox(height: 8)
          ],
        ),
      ),
    );
  }
}
