
import 'package:flutter/material.dart';
import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/model/category.dart';
import 'package:meal_app/screens/meals.dart';
import 'package:meal_app/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, Category category) {
    final filterMeal = dummyMeals.where((meal) => meal.categories.contains(category.id)).toList();
    // Navigator.push(context, route)
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealScreen(
          title: category.title,
          meals: filterMeal,
        ),
      ),
    );
   }

  @override
  Widget build(BuildContext context) {
    return  GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [for (final c in availableCategories) CategoryItem(category: c, onselect: (){
          _selectCategory(context, c);
        },)],
      
    );
  }
}
