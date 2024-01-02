import 'package:app/Models/category.dart';
import 'package:app/Models/meal.dart';
import 'package:flutter/material.dart';

const existingCategory = [
  // SET 4
  Category(
    id: 'C1',
    title: 'Italian',
    color: Color(0xFFE57373), // Coral Red
  ),
  Category(
    id: 'C2',
    title: 'Indian',
    color: Color(0xFF81C784), // Mint Green
  ),
  Category(
    id: 'C3',
    title: 'Japanese',
    color: Color(0xFF64B5F6), // Sky Blue
  ),
  Category(
    id: 'C4',
    title: 'Mexican',
    color: Color(0xFFFFB74D), // Peach
  ),
  Category(
    id: 'C5',
    title: 'Comfort',
    color: Color(0xFF9575CD), // Lavender
  ),
  Category(
    id: 'C6',
    title: 'Vegetarian',
    color: Color(0xFFF06292), // Pink
  ),
  Category(
    id: 'C7',
    title: 'Healthy',
    color: Color(0xFF4DB6AC), // Teal
  ),
  Category(
    id: 'C8',
    title: 'Sweet',
    color: Color(0xFFFF8A65), // Light Salmon
  ),
  Category(
    id: 'C9',
    title: 'Grill & BBQ',
    color: Color(0xFFFBC02D), // Yellow
  ),
  Category(
    id: 'C10',
    title: 'BreakFast',
    color: Color(0xFF90A4AE), // Blue Grey
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: ['C1'],
    title: 'Italian Spaghetti',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm1',
    categories: ['C1', 'C5'],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.archanaskitchen.com/images/archanaskitchen/10-Brands/DelMonte-KidsRecipes/Spaghetti_Pasta_Recipe_In_Creamy_Tomato_Sauce_-_Kids_Recipes_Made_With_Del_Monte-3.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  // Add more meals based on the categories...
  Meal(
    id: 'm2',
    categories: ['C2', 'C6'],
    title: 'Paneer Tikka',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://t4.ftcdn.net/jpg/05/20/08/67/360_F_520086700_0fYFa0RIaZCcSpH0zDcVNjzHm2NKcih1.jpg',
    duration: 30,
    ingredients: [
      '200g Paneer (Cottage Cheese)',
      '1 Cup Hung Curd',
      '1 Tablespoon Ginger-Garlic Paste',
      '1 Tablespoon Gram Flour (Besan)',
      'Spices',
      'Bell Peppers and Onions for Skewers'
    ],
    steps: [
      'Mix hung curd, ginger-garlic paste, gram flour, and spices to make the marinade.',
      'Cut paneer into cubes and coat them in the marinade. Let it sit for at least 2 hours.',
      'Thread marinated paneer, bell peppers, and onions onto skewers.',
      'Grill or bake until paneer is golden brown and vegetables are cooked.',
      'Serve hot with mint chutney.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: ['C6', 'C3'],
    title: 'Japanese Classic Hamburger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: ['C4'],
    title: 'Mexican Enchiladas',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://weelicious.com/wp-content/uploads/2021/05/Mexican-Enchiladas-11-1.jpg',
    duration: 60,
    ingredients: [
      '8 Tortillas',
      '400g Chicken',
      '1 Onion',
      '2 Bell Peppers',
      '200g Black Beans',
      '200g Corn',
      '200g Cheese',
      'Spices'
    ],
    steps: [
      'Preheat the oven to 180°C.',
      'Cook the chicken and shred it.',
      'Sauté the onion, bell peppers, black beans, and corn.',
      'Mix the shredded chicken with sautéed vegetables and spices.',
      'Fill each tortilla with the mixture, roll it, and place in a baking dish.',
      'Top with cheese and bake for 20 minutes.',
      'Serve hot with salsa and guacamole.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm5',
    categories: ['C5'],
    title: 'Comfort Macaroni and Cheese',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.staysnatched.com/wp-content/uploads/2016/12/southern-mac-and-cheese-3.jpg',
    duration: 30,
    ingredients: [
      '400g Macaroni',
      '300g Cheddar Cheese',
      '300ml Milk',
      '2 tablespoons Butter',
      '2 tablespoons Flour',
      'Salt and Pepper'
    ],
    steps: [
      'Cook the macaroni according to package instructions.',
      'In a saucepan, melt butter, add flour, and cook for 2 minutes.',
      'Gradually whisk in milk until smooth and thickened.',
      'Add grated cheddar cheese and stir until melted.',
      'Season with salt and pepper.',
      'Combine the cooked macaroni with the cheese sauce.',
      'Serve hot, optionally baked for a crispy top.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm6',
    categories: ['C6'],
    title: 'Vegetarian Stuffed Bell Peppers',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        'https://itsavegworldafterall.com/wp-content/uploads/2019/06/Vegetarian-Italian-Stuffed-Peppers-4-500x500.jpg',
    duration: 50,
    ingredients: [
      '4 Bell Peppers',
      '1 cup Quinoa',
      '1 can Black Beans',
      '1 cup Corn',
      '1 Onion',
      '2 cloves Garlic',
      '1 cup Tomato Sauce',
      '1 cup Shredded Cheese',
      'Spices'
    ],
    steps: [
      'Cook quinoa according to package instructions.',
      'Preheat the oven to 180°C.',
      'Cut the tops off bell peppers and remove seeds.',
      'Sauté onion and garlic until soft.',
      'In a bowl, combine cooked quinoa, black beans, corn, sautéed onion and garlic, tomato sauce, and spices.',
      'Stuff each bell pepper with the mixture.',
      'Top with shredded cheese and bake for 30 minutes.',
      'Serve hot.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm8',
    categories: ['C8'],
    title: 'Sweet Berry Parfait',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.onceuponachef.com/images/2011/08/6a0115721bb963970b015390961adb970b-450wi.jpg',
    duration: 15,
    ingredients: [
      '1 cup Mixed Berries (Strawberries, Blueberries, Raspberries)',
      '1 cup Greek Yogurt',
      '2 tablespoons Honey',
      'Granola',
      'Mint Leaves (for garnish)'
    ],
    steps: [
      'In serving glasses, layer mixed berries and Greek yogurt.',
      'Drizzle honey over the layers.',
      'Top with granola for crunch.',
      'Repeat the layers.',
      'Finish with a dollop of Greek yogurt and garnish with mint leaves.',
      'Serve chilled.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm9',
    categories: ['C9'],
    title: 'Grilled BBQ Chicken Skewers',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://thewoksoflife.com/wp-content/uploads/2016/07/grilled-tandoori-chicken-12-500x500.jpg',
    duration: 40,
    ingredients: [
      '1 kg Chicken Breast, cut into cubes',
      '1 cup BBQ Sauce',
      '1/4 cup Olive Oil',
      '2 tablespoons Soy Sauce',
      '1 tablespoon Honey',
      '1 teaspoon Smoked Paprika',
      'Bell Peppers and Onions (cut into chunks)'
    ],
    steps: [
      'In a bowl, mix BBQ sauce, olive oil, soy sauce, honey, and smoked paprika.',
      'Marinate chicken cubes in the sauce for at least 30 minutes.',
      'Thread marinated chicken, bell peppers, and onions onto skewers.',
      'Preheat grill or grill pan.',
      'Grill skewers for 10-12 minutes, turning occasionally, until chicken is cooked through.',
      'Serve hot with extra BBQ sauce.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm10',
    categories: ['C2', 'C5', 'C10'],
    title: 'Banana Walnut Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 25,
    ingredients: [
      '1 cup All-Purpose Flour',
      '1 tablespoon Sugar',
      '1 teaspoon Baking Powder',
      '1/2 teaspoon Baking Soda',
      '1/4 teaspoon Salt',
      '1 cup Buttermilk',
      '1 Egg',
      '2 tablespoons Butter, melted',
      '1 ripe Banana, mashed',
      '1/2 cup Chopped Walnuts'
    ],
    steps: [
      'In a bowl, whisk together flour, sugar, baking powder, baking soda, and salt.',
      'In another bowl, mix buttermilk, egg, and melted butter.',
      'Add mashed banana to the wet ingredients.',
      'Combine wet and dry ingredients, and fold in chopped walnuts.',
      'Heat a griddle or non-stick pan over medium heat.',
      'Pour 1/4 cup batter onto the griddle for each pancake.',
      'Cook until bubbles form on the surface, then flip and cook until golden brown.',
      'Serve warm with maple syrup.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm12',
    categories: ['C2'],
    title: 'South Indian Sambar and Rice',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.kannammacooks.com/wp-content/uploads/Murungakkai-Sambar-kannammacooks.com-Recipe-Tamilnadu-Madras-style-murungakkai-sambar-idli-Indian-Chennai-drumstick-Sambar-1.jpg',
    duration: 45,
    ingredients: [
      '1 cup Toor Dal (split pigeon peas)',
      '1 cup Mixed Vegetables (carrots, beans, drumsticks, etc.)',
      '1 Onion, chopped',
      '2 Tomatoes, chopped',
      'Tamarind Pulp',
      'Sambar Powder',
      'Turmeric Powder',
      'Mustard Seeds',
      'Curry Leaves',
      'Asafoetida (Hing)',
      'Coriander Leaves',
      'Cooked Rice for serving'
    ],
    steps: [
      'Cook toor dal in a pressure cooker until soft and mashable.',
      'In a separate pot, cook mixed vegetables, onions, and tomatoes until tender.',
      'Add tamarind pulp, sambar powder, turmeric powder, and salt to the vegetables.',
      'Mix in the cooked and mashed toor dal.',
      'Prepare a tempering by heating mustard seeds, curry leaves, and asafoetida in oil.',
      'Add the tempering to the sambar and let it simmer for a few minutes.',
      'Garnish with fresh coriander leaves.',
      'Serve hot with steamed rice.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm23',
    categories: ['C7'],
    title: 'Quinoa Salad with Avocado',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.littlebroken.com/wp-content/uploads/2022/05/Quinoa-Salad-with-Avocado-01.jpg',
    duration: 20,
    ingredients: [
      '1 cup Quinoa',
      '2 cups Water',
      '1 Avocado, diced',
      '1 cup Cherry Tomatoes, halved',
      '1/2 cup Cucumber, diced',
      '1/4 cup Red Onion, finely chopped',
      'Feta Cheese, crumbled',
      'Fresh Parsley, chopped',
      'Lemon Juice',
      'Olive Oil',
      'Salt and Pepper to taste'
    ],
    steps: [
      'Rinse quinoa under cold water and cook according to package instructions.',
      'In a large bowl, combine cooked quinoa, diced avocado, cherry tomatoes, cucumber, and red onion.',
      'Add crumbled feta cheese and chopped fresh parsley.',
      'In a small bowl, whisk together lemon juice, olive oil, salt, and pepper to create the dressing.',
      'Pour the dressing over the salad and toss gently to combine.',
      'Serve chilled as a healthy and refreshing salad.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm24',
    categories: ['C1'],
    title: 'Chicken Alfredo Pasta',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod/images/chicken-alfredo-index-64ee1026c82a9.jpg?crop=0.9994472084024323xw:1xh;center,top&resize=1200:*',
    duration: 40,
    ingredients: [
      '8 oz Fettuccine Pasta',
      '2 Chicken Breasts, thinly sliced',
      '2 cloves Garlic, minced',
      '1 cup Heavy Cream',
      '1 cup Parmesan Cheese, grated',
      '1/2 cup Butter',
      'Salt and Pepper to taste',
      'Fresh Parsley, chopped for garnish'
    ],
    steps: [
      'Cook fettuccine pasta according to package instructions; drain and set aside.',
      'Season sliced chicken breasts with salt and pepper.',
      'In a large skillet, melt butter over medium-high heat and sauté the seasoned chicken until cooked through.',
      'Add minced garlic and cook for an additional minute until fragrant.',
      'Pour in heavy cream and bring to a simmer. Stir in grated Parmesan cheese until melted and smooth.',
      'Toss the cooked pasta into the creamy Alfredo sauce, coating the pasta evenly.',
      'Adjust seasoning with salt and pepper if needed.',
      'Garnish with chopped fresh parsley before serving.',
      'Serve hot and enjoy this delicious Chicken Alfredo Pasta!'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm26',
    categories: ['C3'],
    title: 'Chicken Rice',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl: 'https://i.ytimg.com/vi/KyxW9rnKPKQ/maxresdefault.jpg',
    duration: 60,
    ingredients: [
      '2 cups Jasmine Rice',
      '4 Chicken Thighs',
      '4 cups Chicken Broth',
      '4 slices Ginger',
      '2 cloves Garlic, minced',
      '1 tablespoon Sesame Oil',
      '2 tablespoons Soy Sauce',
      '1 tablespoon Oyster Sauce',
      '2 Green Onions, sliced',
      'Cilantro for garnish'
    ],
    steps: [
      'Rinse the rice under cold water until the water runs clear.',
      'In a pot, combine rice and chicken broth. Cook rice according to package instructions.',
      'Rub chicken thighs with salt and place ginger slices on top.',
      'Steam the chicken over the rice for about 20-25 minutes or until fully cooked.',
      'In a pan, sauté minced garlic in sesame oil until fragrant.',
      'Add cooked rice, soy sauce, oyster sauce, and sliced green onions. Mix well.',
      'Serve the chicken over the flavorful rice.',
      'Garnish with cilantro and enjoy your delicious Chicken Rice!'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm27',
    categories: ['C2', 'C5'],
    title: 'Egg Fried Rice',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://takestwoeggs.com/wp-content/uploads/2023/03/Egg-Fried-Rice-Takestwoeggs-Final-Photography-sq.jpg',
    duration: 30,
    ingredients: [
      '3 cups Cooked Rice (preferably day-old)',
      '3 Eggs, beaten',
      '1 cup Mixed Vegetables (peas, carrots, corn)',
      '2 tablespoons Soy Sauce',
      '1 tablespoon Sesame Oil',
      '3 Green Onions, chopped',
      'Salt and Pepper to taste',
      'Cooking Oil for frying'
    ],
    steps: [
      'Heat oil in a wok or large pan over medium-high heat.',
      'Add mixed vegetables and stir-fry until tender.',
      'Push vegetables to the side, pour beaten eggs into the pan. Scramble the eggs until just cooked.',
      'Add cooked rice to the pan, breaking up any clumps.',
      'Drizzle soy sauce and sesame oil over the rice. Mix well to combine.',
      'Stir in chopped green onions and season with salt and pepper.',
      'Continue cooking and stirring until everything is heated through.',
      'Serve hot and enjoy your tasty Egg Fried Rice!'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];


// Constants in Dart should be written in lowerCamelcase.
/* const availableCategories = [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
]; */




  //SET 1
  /*  Category(
    id: 'C1',
    title: 'Italian',
    color:  Color(0xFFEF5350), // Red
  ),
  Category(
    id: 'C2',
    title: 'Indian',
    color:  Color(0xFF66BB6A), // Green
  ),
  Category(
    id: 'C3',
    title: 'Japanese',
    color:  Color(0xFF42A5F5), // Blue
  ),
  Category(
    id: 'C4',
    title: 'Mexican',
    color:  Color(0xFFFF7043), // Deep Orange
  ),
  Category(
    id: 'C5',
    title: 'Comfort',
    color:  Color(0xFF7E57C2), // Purple
  ),
  Category(
    id: 'C6',
    title: 'Vegetarian',
    color:  Color(0xFFEC407A), // Pink
  ),
  Category(
    id: 'C7',
    title: 'Healthy',
    color:  Color(0xFF26A69A), // Teal
  ),
  Category(
    id: 'C8',
    title: 'Sweet',
    color:  Color(0xFFFF8A65), // Orange
  ),
  Category(
    id: 'C9',
    title: 'Grill',
    color:  Color(0xFFFFA726), // Amber
  ),
  Category(
    id: 'C10',
    title: 'Breakfast',
    color:  Color(0xFF78909C), // Blue Grey
  ), */
// SET 2
  /* Category(
    id: 'C1',
    title: 'Italian',
    color:  Color(0xFFD32F2F), // Dark Coral Red
  ),
  Category(
    id: 'C2',
    title: 'Indian',
    color:  Color(0xFF388E3C), // Dark Green
  ),
  Category(
    id: 'C3',
    title: 'Japanese',
    color:  Color(0xFF1976D2), // Dark Blue
  ),
  Category(
    id: 'C4',
    title: 'Mexican',
    color:  Color(0xFFE65100), // Dark Orange
  ),
  Category(
    id: 'C5',
    title: 'Comfort',
    color:  Color(0xFF5E35B1), // Dark Purple
  ),
  Category(
    id: 'C6',
    title: 'Vegetarian',
    color:  Color(0xFFC2185B), // Dark Pink
  ),
  Category(
    id: 'C7',
    title: 'Healthy',
    color:  Color(0xFF00695C), // Dark Teal
  ),
  Category(
    id: 'C8',
    title: 'Sweet',
    color:  Color(0xFFE64A19), // Dark Red-Orange
  ),
  Category(
    id: 'C9',
    title: 'Grill',
    color:  Color(0xFFEF6C00), // Dark Orange
  ),
  Category(
    id: 'C10',
    title: 'Breakfast',
    color:  Color(0xFF455A64), // Dark Blue Grey
  ), */
//SET 3
  /* Category(
    id: 'C1',
    title: 'Italian',
    color:  Color(0xFFE57373), // Coral Red
  ),
  Category(
    id: 'C2',
    title: 'Indian',
    color:  Color(0xFF81C784), // Mint Green
  ),
  Category(
    id: 'C3',
    title: 'Japanese',
    color:  Color(0xFF64B5F6), // Sky Blue
  ),
  Category(
    id: 'C4',
    title: 'Mexican',
    color:  Color(0xFFFFB74D), // Peach
  ),
  Category(
    id: 'C5',
    title: 'Comfort',
    color:  Color(0xFF9575CD), // Lavender
  ),
  Category(
    id: 'C6',
    title: 'Vegetarian',
    color:  Color(0xFFF06292), // Pink
  ),
  Category(
    id: 'C7',
    title: 'Healthy',
    color:  Color(0xFF4DB6AC), // Teal
  ),
  Category(
    id: 'C8',
    title: 'Sweet',
    color:  Color(0xFFFF8A65), // Light Salmon
  ),
  Category(
    id: 'C9',
    title: 'Grill',
    color:  Color(0xFFFBC02D), // Yellow
  ),
  Category(
    id: 'C10',
    title: 'Breakfast',
    color:  Color(0xFF90A4AE), // Blue Grey
  ), */

  /* Category(
    id: 'C1',
    title: 'ITALIAN CUISINE',
    color:  Color(0xFFD8BFD8), // Light Violet
  ),
  Category(
    id: 'C2',
    title: 'ASIAN DELIGHTS',
    color:  Color(0xFFE6E6FA), // Light Indigo
  ),
  Category(
    id: 'C3',
    title: 'MEDITERRANEAN FLAVORS',
    color:  Color(0xFFADD8E6), // Light Blue
  ),
  Category(
    id: 'C4',
    title: 'MEXICAN FIESTA',
    color:  Color(0xFF90EE90), // Light Green
  ),
  Category(
    id: 'C5',
    title: 'COMFORT FOOD CLASSICS',
    color:  Color(0xFFFFFFE0), // Light Yellow
  ),
  Category(
    id: 'C6',
    title: 'VEGETARIAN BLISS',
    color:  Color(0xFFFFE4B5), // Light Orange
  ),
  Category(
    id: 'C7',
    title: 'HEALTHY EATS',
    color:  Color(0xFFFFA07A), // Light Salmon
  ),
  Category(
    id: 'C8',
    title: 'SWEET TREATS',
    color:  Color(0xFFFFC0CB), // Light Pink
  ),
  Category(
    id: 'C9',
    title: 'GRILL & BBQ',
    color:  Color(0xFFFFEFD5), // Light PapayaWhip
  ),
  Category(
    id: 'C10',
    title: 'BREAKFAST BONANZA',
    color:  Color(0xFFE6E6FA), // Light Lavender
  ), */
  // Breakfast Gold

