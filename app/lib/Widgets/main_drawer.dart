import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});

  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                gradient: SweepGradient(
              startAngle: 0.0,
              endAngle: 10,
              colors: [
                Theme.of(context).colorScheme.primaryContainer,
                Theme.of(context).colorScheme.secondaryContainer
              ],
            )),
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 50,
                  color: Theme.of(context).colorScheme.inverseSurface,
                ),
                const SizedBox(width: 20),
                Text(
                  'Cooking Up!',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.inverseSurface),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              onSelectScreen('meals');
            },
            leading: Icon(Icons.restaurant,
                size: 30, color: Theme.of(context).colorScheme.secondary),
            title: Text(
              'Meals',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.primary, fontSize: 25),
            ),
          ),
          ListTile(
            onTap: () {
              onSelectScreen('filters');
            },
            leading: Icon(Icons.settings,
                size: 30, color: Theme.of(context).colorScheme.secondary),
            title: Text(
              'Filters',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.primary, fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
