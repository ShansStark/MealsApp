import 'package:app/Data/sample_data.dart';
import 'package:app/Screen/categories.dart';
import 'package:app/Screen/filter.dart';
import 'package:app/Screen/meals.dart';
import 'package:app/Widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:app/Models/meal.dart';
import 'package:app/provider/meals_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/provider/favorite_provider.dart';
import 'package:app/provider/filter_provider.dart';

const KIntitalFilters = {
  Filter.glutenFree: false,
  Filter.lactoseFree: false,
  Filter.vegan: false,
  Filter.vegetarian: false
};

class TabScreen extends ConsumerStatefulWidget {
  const TabScreen({super.key});
  @override
  ConsumerState<TabScreen> createState() {
    return _TabScreen();
  }
}
/* class TabScreen extends StatefulWidget {
  const TabScreen({super.key});
  @override
  State<TabScreen> createState() {
    return _TabScreen();
  }
} */ //Normal Class State without provider function

class _TabScreen extends ConsumerState<TabScreen> {
  int _selectedPageIndex = 0;
  //final List<Meal> _favoriteMeals = [];  //USED BEFORE USING PROVIDER CONCEPT
  //Map<Filter, bool> _selectedFilters = KIntitalFilters; //USED BEFORE USING PROVIDER CONCEPT

  /* void _showInfoMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  } */ //USED BEFORE USING PROVIDER CONCEPT

  /* void _toggleMealFavoriteStatus(Meal meal) {
    final isExisting = _favoriteMeals.contains(meal);

    if (isExisting) {
      setState(() {
        _favoriteMeals.remove(meal);
        _showInfoMessage('Meal is No Longer a Favorite');
      });
    } else {
      setState(() {
        _favoriteMeals.add(meal);
        _showInfoMessage('Marked Favorite');
      });
    }
  } */ //USED BEFORE USING PROVIDER CONCEPT

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      //final result =
      await Navigator.of(context).push<Map<Filter, bool>>(MaterialPageRoute(
        builder: (ctx) => const FilteredScreen(),
        //builder: (ctx) => FilteredScreen(currentFilter: _selectedFilters), //USED BEFORE PROVIDER CONCEPT
      ));
      /* setState(() {
        _selectedFilters = result ?? KIntitalFilters;
      }); */ //USED BEFORE PROVIDER CONCEPT
    } else if (identifier == 'meals') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (ctx) => const TabScreen(),
      ));
    } else {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(context) {
    // final meals = ref.watch(mealsProvider);

    // final activeFilters = ref.watch(filterProvider);
    final availableMeals = ref.watch(filteredMealsProvider);
    /*final availableMeals = meals.where((meal) {
      if (activeFilters[Filter.glutenFree]! && !meal.isGlutenFree) {
        return false;
      }

      if (activeFilters[Filter.lactoseFree]! && !meal.isLactoseFree) {
        return false;
      }
      if (activeFilters[Filter.vegetarian]! && !meal.isVegetarian) {
        return false;
      }
      if (activeFilters[Filter.vegan]! && !meal.isVegan) {
        return false;
      }
      return true;
    }).toList(); */ //MOVED TO FILTER PROVIDER
    Widget activePage = CategoriesScreen(
      //onToggleFavorite: _toggleMealFavoriteStatus, //USED BEFORE USING PROVIDER CONCEPT
      availableMeals: availableMeals,
    );
    var activePageTitle = 'Categories';

    if (_selectedPageIndex == 1) {
      final favoriteMeals = ref.watch(favoriteMealsProvider);
      activePage = MealsScreen(
        // onToggleFavorite: _toggleMealFavoriteStatus, //USED BEFORE USING PROVIDER CONCEPT
        meals: favoriteMeals,
      );
      activePageTitle = 'Favorites';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      drawer: MainDrawer(onSelectScreen: _setScreen),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_rate_sharp), label: 'Favorites')
        ],
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
      ),
    );
  }
}
