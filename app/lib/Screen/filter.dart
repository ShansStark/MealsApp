import 'package:app/Screen/tabs.dart';
import 'package:app/Widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:app/provider/filter_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
/* enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
} */ // USE BEFORE PROVIDER

class FilteredScreen extends ConsumerWidget {
  const FilteredScreen({
    super.key,
    //required this.currentFilter, //USED BEFORE PROVIDER CONCEPT
  });
  //final Map<Filter, bool> currentFilter; //USED BEFORE PROVIDER CONCEPT
  /*@override
  ConsumerState<FilteredScreen> createState() {
    return _FilteredScreen();
  }
}

class _FilteredScreen extends ConsumerState<FilteredScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterset = false;
  var _vegetarianFilterSet = false;
  var _veganFilterSet = false; */ //REPLACING ALL THIS TO MANAGE THE STATE OS SWITCH TILE USING PROVIDER

  /* @override
  void initState() {
    super.initState();
    final activeFilters = ref.read(filterProvider);
    _glutenFreeFilterSet = activeFilters[Filter.glutenFree]!;
    _lactoseFreeFilterset = activeFilters[Filter.lactoseFree]!;
    _vegetarianFilterSet = activeFilters[Filter.vegetarian]!;
    _veganFilterSet = activeFilters[Filter.vegan]!;
  } */ //REMOVED AFTER PROVIDER CONCEPT FOR SWITCH TILE

  @override
  Widget build(context, WidgetRef ref) {
    final activeFilters = ref.watch(filterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Filter's"),
      ),
      /* drawer: MainDrawer(onSelectScreen: (identifier) {
        Navigator.of(context).pop();
        if (identifier == 'meals') {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (ctx) => const TabScreen(),
          ));
        }
      }), */
      //THIS IS ONE WAY OF REMOVVING THE BACK BUTTOM FOR QUICK CHANGING SCREENS
      body: /* WillPopScope(
        onWillPop: () async {
          ref.read(filterProvider.notifier).serFilters({
            Filter.glutenFree: _glutenFreeFilterSet,
            Filter.lactoseFree: _lactoseFreeFilterset,
            Filter.vegetarian: _vegetarianFilterSet,
            Filter.vegan: _veganFilterSet,
          });
          /* Navigator.of(context).pop(
            {
            Filter.glutenFree: _glutenFreeFilterSet,
            Filter.lactoseFree: _lactoseFreeFilterset,
            Filter.vegetarian: _vegetarianFilterSet,
            Filter.vegan: _veganFilterSet,
          }); */ //USED BEFORE PROVIDER
          //return false;   //USED BEOFRE PROVIDER
          return true;
        },
        child: */
          Column(
        children: [
          SwitchListTile(
            value: activeFilters[Filter.glutenFree]!,
            onChanged: (isChecked) {
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filter.glutenFree, isChecked);
              /*  setState(() {
                _glutenFreeFilterSet = isChecked;
              }); */
            },
            title: Text(
              'Gluten-Free',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
            subtitle: Text(
              'Only Include Gluten Free Meals',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            activeColor: Colors.tealAccent,
            contentPadding: const EdgeInsets.only(left: 30, right: 25),
          ),
          SwitchListTile(
            value: activeFilters[Filter.lactoseFree]!,
            onChanged: (isChecked) {
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filter.lactoseFree, isChecked);
              /* setState(() {
                _lactoseFreeFilterset = isChecked;
              }); */
            },
            title: Text(
              'Lactose-Free',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
            subtitle: Text(
              'Only Include Lactose Free Meals',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            activeColor: Colors.tealAccent,
            contentPadding: const EdgeInsets.only(left: 30, right: 25),
          ),
          SwitchListTile(
            value: activeFilters[Filter.vegetarian]!,
            onChanged: (isChecked) {
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filter.vegetarian, isChecked);
              /*  setState(() {
                _vegetarianFilterSet = isChecked;
              }); */
            },
            title: Text(
              'Vegetarian',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
            subtitle: Text(
              'Only Include Vegetarian Meals',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            activeColor: Colors.tealAccent,
            contentPadding: const EdgeInsets.only(left: 30, right: 25),
          ),
          SwitchListTile(
            value: activeFilters[Filter.vegan]!,
            onChanged: (isChecked) {
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filter.vegan, isChecked);
              /* setState(() {
                _veganFilterSet = isChecked;
              }); */
            },
            title: Text(
              'Vegan',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
            subtitle: Text(
              'Only Include non - meat related Meals',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            activeColor: Colors.tealAccent,
            contentPadding: const EdgeInsets.only(left: 30, right: 25),
          ),
        ],
      ),
    );
  }
}
