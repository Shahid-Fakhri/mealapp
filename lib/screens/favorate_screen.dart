import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoratesScreen extends StatelessWidget {
  final List<Meal> favorateMeals;
  FavoratesScreen(this.favorateMeals);

  @override
  Widget build(BuildContext context) {
    if (favorateMeals.isEmpty) {
      return Center(
        child: Text('You have no favorate yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favorateMeals[index].id,
            title: favorateMeals[index].title,
            imageUrl: favorateMeals[index].imageUrl,
            duration: favorateMeals[index].duration,
            complexity: favorateMeals[index].complexity,
            affordability: favorateMeals[index].affordability,
          );
        },
        itemCount: favorateMeals.length,
      );
    }
  }
}
