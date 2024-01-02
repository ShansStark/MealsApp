import 'package:app/Screen/categories.dart';
import 'package:app/Screen/tabs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 18, 62, 84),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const ProviderScope(
    child: App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home:
          const TabScreen(), /* const MealsScreen(
            meals: dummyMeals, title: 'Some Category') // Todo ...,
        ); */
    );
  }
}
 

/* import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 18, 62, 84),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const ProviderScope(
    child: App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const TabScreen(),
      // You can set the background color like this:
      // home: const TabScreen(backgroundColor: Colors.blue),
      // Or set a background image like this:
      // home: const TabScreen(backgroundImage: AssetImage('assets/background.jpg')),
    );
  }
}

class TabScreen extends StatelessWidget {
  const TabScreen({
    Key? key,
    // Add these optional parameters for background customization
    this.backgroundColor,
    this.backgroundImage,
  }) : super(key: key);

  final Color? backgroundColor;
  final ImageProvider? backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor, // Set the background color here
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Add a background image
          if (backgroundImage != null)
            Image(
              image: backgroundImage!,
              fit: BoxFit.cover,
            ),
          // Rest of your TabScreen code
          // ...
        ],
      ),
    );
  }
}
 */