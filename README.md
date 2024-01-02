# MealsRecipe Application

## Overview
This Flutter application explores advanced widgets, animations, cross-widget data handling, and widget management.

## Expense Tracker Layout
- **Main Screen:** Displays a list of categories with 10 different meals.
- **Meal List & Details Screen:** Clicking on a category shows a list of meals, and further selection reveals the recipe for the chosen meal.
- **Favorites:** Marked meals as favorites can be quickly accessed on this screen.
- **SideBar:** App function for filtering meals based on desired conditions in the categories.

## Tools and Data Types Learned and Used:

### Packages:
- **`transparent_image` Package:** Used for placing transparent images with the help of other widgets like `FadeInImage()`.
- **`river_pod` Package:** Important for cross-widget management for data and widget processing.

## Widgets Used:
- **`GridView`:** Sets up a custom screen of data with 2 columns in a grid structure.
- **`InkWell`:** Detects clicks and provides nice feedback to the user for further screen transitions.
- **`FadeInImage`:** Displays a placeholder while the image is loading.
- **`Navigator`:** Used for pushing pages to the required screen with `MaterialPageRoute()` on top of the other screen.
- **`Stack`:** Places images on the backside of `Text()` widget.
- **`Positioned`:** Controls the position/placement of the current widget as needed.
- **`Card`:** Used for effective display, and clipping behavior is utilized.
- **`BottomNavigationBar`:** A property of `AppBar` enabling the switch between tab screens with a list of TabScreens provided by us.
- **`Drawer`:** Displays a side drawer in the MainScreen to access other functionalities of the App.
- **`ListTile`:** An optimized widget of `Row` that displays list data with extra functionality.
- **`SwitchTile`:** Represents a switch, enabling the user to click and set the required label On/Off as per the App Logic.
- **`WillPopScope`:** Utility widget helping in returning data from a screen to its preceding screen for further data processing, used with `await` and `async` for proper functioning.
- **`Provider`:** Sets up a provider with required data that can be fetched in a different widget without passing them as arguments using `Watch` and `read` functions in the respective custom widget/Screen. To ensure proper working, the conversion of Stateful/Stateless to ConsumerStateful/ConsumerStateless on the class is required.
- **`ProvideScope`:** Wrapped along with the `App` in main for supporting the proper functioning of the package.
- **`StateNotifier`:** If the data in `Provider` is changed, it needs this notifier to take control.
- **`AnimateBuilder`:** Screen widget with animation is wrapped with this widget; the animation parameter is set to AnimationController variable, and its builder argument is filled with the required animation like `SlideTransition`/`FadeTransition` and many more.
- **`Tween`:** Controls the animation configuration values with its arguments `begin` and `end`, which again takes an `Offset` to pass the numerical values for animation.
- **`Hero`:** An easy animation widget available in Flutter; by wrapping the start and its proceeding screen page widget with `Hero`, it delivers its default transition animation.

## Keywords, Functions, and Others:
- **`contains()`:** Checks for an existing value in a list/map/any other data structure.
- **`variable_name.substr() & variable_name.name[0]`:** Effective utilization of string functionality for the filtering process and other display purposes.
- **`??`:** Sets a conditional fallback value in case the user input sent/given is `Null`.
- **`AnimationController`:** Class to utilize animation for the widget is set with a variable name. E.g., `AnimationController _CategoryScreenController`.
- **`late`:** Used for the initialization of `AnimationController` data-type variable to tell the compiler that the variable will be having a value at the time of use and not at the time of class creation.
- **`SingleTickerProviderStateMixin`:**. Should extend along with the `State<>` to perform animation. E.g., `class _CategoriesScreenState extends State<CategoriesScreen> with SingleTickerProviderStateMixin { // Data .. }`
- **`get`:** A getter method providing access to an object's property and returning them.
- **`SweepGradient`:** A design widget used instead of the regular `LinearGradient`.
- **`Duration`:** A utility widget that helps us control time for animation.
