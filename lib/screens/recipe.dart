import 'package:mevivu/shared/network_providers/meal.dart';

import '../imports.dart';
import '../widgets/recipe_card.dart';

class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    final filter = {'c': 'Seafood'};
    return SafeArea(
        child: ListView(children: [
      Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Center(
              child: Text('Công thức',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.primary)))),
      Divider(thickness: 1, height: 2),
      SizedBox(height: 20),
      Row(children: [
        SizedBox(width: 16),
        Expanded(
            child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    splashColor: Theme.of(context)
                        .colorScheme
                        .primaryFixed
                        .withOpacity(0.5),
                    child: Ink(
                        decoration: BoxDecoration(
                            color:
                                Theme.of(context).colorScheme.primaryFixedDim,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8.0),
                            child: Center(
                                child: Text('Video',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white)))))))),
        SizedBox(width: 16),
        Expanded(
            child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    splashColor: Theme.of(context)
                        .colorScheme
                        .onPrimaryFixedVariant
                        .withOpacity(0.5),
                    child: Ink(
                        decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8.0),
                            child: Center(
                              child: Text('Công thức',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primaryFixedDim)),
                            )))))),
        SizedBox(width: 16)
      ]),
      SizedBox(height: 20),
      Consumer(builder: (context, ref, child) {
        final recipes = ref.watch(fetchMealByCategoryProvider(filter));
        return recipes.when(
            data: (meals) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: meals.map((meal) {
                    // Create a RecipeCard for each meal
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: RecipeCard(
                        width: MediaQuery.of(context).size.width,
                        imageUrl: meal.strMealThumb ??
                            'https://via.placeholder.com/300',
                        title: meal.strMeal ?? 'Unknown Meal',
                        duration: '1 hour 20 Minute',
                        rating: '4.8',
                        onBookmarkPressed: () {},
                        onPlayPressed: () {},
                      ),
                    );
                  }).toList(),
                ),
              );
            },
            loading: () => Center(child: CircularProgressIndicator()),
            error: (error, stack) => Text('Error: ${error.toString()}'));
      })
    ]));
  }
}
