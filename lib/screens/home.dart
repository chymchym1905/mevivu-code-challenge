import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:mevivu/shared/network_providers/meal.dart';
import 'package:mevivu/widgets/categorytab.dart';
import 'package:mevivu/widgets/recent_recipe.dart';
import 'package:mevivu/widgets/recipe_card.dart';
import 'package:mevivu/widgets/yellow_meal_card.dart';

import '../imports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final areaFilter = {'a': 'Vietnamese'};
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 26, bottom: 26, left: 22, right: 22),
          child: SizedBox(
            height: 48,
            child: SearchBar(
              elevation: WidgetStatePropertyAll(0),
              leading: Icon(Icons.search_rounded),
              hintText: 'Tìm kiếm sản phẩm',
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
            ),
          ),
        ),
        Column(children: [
          Column(children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('TP. Hồ Chí Minh',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      RichText(
                          text: TextSpan(
                              text: 'Xem tất cả',
                              style: TextStyle(
                                fontSize: 18,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {}))
                    ])),
            SizedBox(height: 8),
            Consumer(
              builder: (context, ref, child) {
                final mealsByArea =
                    ref.watch(fetchMealByAreaProvider(areaFilter));
                return mealsByArea.when(
                  data: (meals) {
                    // Return a list of widgets mapped from the meals data
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: meals.map((meal) {
                          // Create a RecipeCard for each meal
                          return Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: GestureDetector(
                              onTap: (){
                                context.push('/mealdetail/${meal.idMeal}');
                              },
                              child: RecipeCard(
                                imageUrl: meal.strMealThumb ??
                                    'https://via.placeholder.com/300',
                                title: meal.strMeal ?? 'Unknown Meal',
                                duration: '1 hour 20 Minute',
                                rating: '4.8',
                                onBookmarkPressed: () {},
                                onPlayPressed: () {},
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    );
                  },
                  loading: () => Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Text('Error: ${error.toString()}'),
                );
              },
            )
          ]),
          SizedBox(height: 32),
          Column(children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Danh mục',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      RichText(
                          text: TextSpan(
                              text: 'Xem tất cả',
                              style: TextStyle(
                                fontSize: 18,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {}))
                    ])),
            SizedBox(height: 8),
            CategoryScrollView()
          ]),
          SizedBox(height: 32),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('Công thức gần đây',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    RecentRecipe(),
                    SizedBox(width: 16),
                    RecentRecipe(),
                    SizedBox(width: 16),
                    RecentRecipe(),
                    SizedBox(width: 16),
                    RecentRecipe(),
                    SizedBox(width: 16),
                    RecentRecipe(),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 32),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('Nguyên liệu',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Consumer(
                  builder: (context, ref, child) {
                    final ingredients = ref.watch(fetchIngredientsProvider);
                    return ingredients.when(
                        data: (data) {
                          return Wrap(
                            spacing: 8,
                            direction: Axis.horizontal,
                            runSpacing: 8,
                            children: data
                                .map((e) => CategoryTab(
                                    name: e.strIngredient ?? 'No',
                                    selected: false,
                                    onTap: () {}))
                                .toList(),
                          );
                        },
                        loading: () =>
                            Center(child: CircularProgressIndicator()),
                        error: (error, stack) =>
                            Text('Error: ${error.toString()}'));
                  },
                ),
              )
            ],
          ),
          SizedBox(height: 200)
        ])
      ],
    ));
  }
}

class CategoryScrollView extends StatefulWidget {
  const CategoryScrollView({super.key});

  @override
  State<CategoryScrollView> createState() => _CategoryScrollViewState();
}

class _CategoryScrollViewState extends State<CategoryScrollView> {
  int _isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final categoryasyncvalue = ref.watch(fetchCategoriesProvider);
      return categoryasyncvalue.when(
        data: (categories) {
          final filter = {'c': categories[_isSelected]};
          // Return a list of widgets mapped from the meals data
          return Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                    children: List.generate(
                  categories.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CategoryTab(
                        name: categories[index],
                        selected: _isSelected == index,
                        onTap: () {
                          setState(() {
                            _isSelected = index;
                          });
                        }),
                  ),
                )),
              ),
              SizedBox(height: 8),
              Consumer(
                builder: (context, ref, child) {
                  final mealsByCategory =
                      ref.watch(fetchMealByCategoryProvider(filter));
                  return mealsByCategory.when(
                      data: (meals) {
                        return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                                children: List.generate(meals.length, (index) {
                              EdgeInsets pad =
                                  const EdgeInsets.symmetric(horizontal: 8);
                              if (index == 0) {
                                pad = const EdgeInsets.only(right: 8);
                              } else if (index == categories.length - 1) {
                                pad = const EdgeInsets.only(left: 8);
                              }
                              return Padding(
                                padding: pad,
                                child: YellowMealCard(
                                  imageUrl: meals[index].strMealThumb ??
                                      'https://via.placeholder.com/300',
                                  title:
                                      meals[index].strMeal ?? 'No meal found',
                                  author:
                                      'Dau Gia Kien', // You can customize this or make it dynamic
                                  duration: '20 Mins',
                                  onBookmarkPressed: () {},
                                ),
                              );
                            })));
                      },
                      loading: () => Center(child: CircularProgressIndicator()),
                      error: (error, stack) =>
                          Text('Error: ${error.toString()}'));
                },
              )
            ],
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => Text('Error: ${error.toString()}'),
      );
    });
  }
}
