import 'package:mevivu/shared/network_providers/meal.dart';
import 'package:mevivu/widgets/bottomsheet.dart';
import 'package:mevivu/widgets/search_recipe.dart';

import '../imports.dart';

class Search extends ConsumerStatefulWidget {
  const Search({super.key});

  @override
  ConsumerState<Search> createState() => _SearchState();
}

class _SearchState extends ConsumerState<Search> {
  Map<String, dynamic> _filter = {'c': 'Breakfast'};
  void onFilterChange(Map<String, dynamic> filter) {
    setState(() {
      _filter = filter;
    });
  }

  @override
  Widget build(BuildContext context) {
    final meals = ref.watch(fetchMealByFilterProvider(_filter));
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(height: 16),
        Container(
            padding:
                const EdgeInsets.only(top: 26, bottom: 26, left: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            child: Row(children: [
              Expanded(
                child: SizedBox(
                  height: 48,
                  child: SearchBar(
                    elevation: WidgetStatePropertyAll(0),
                    leading: Icon(Icons.search_rounded),
                    hintText: 'Bánh táo',
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                      customBorder: CircleBorder(),
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          useRootNavigator: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(24)),
                          ),
                          builder: (context) {
                            return FilterBottomSheet(
                                updateFilter: onFilterChange);
                          },
                        );
                      },
                      child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.filter_alt_rounded,
                              color: Theme.of(context).colorScheme.primary,
                              size: 36))))
            ])),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: meals.when(
                data: (data) {
                  return Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      direction: Axis.horizontal,
                      children: data.map((e) {
                        return GestureDetector(
                          onTap: () {
                            context.push('/mealdetail/${e.idMeal}');
                          },
                          child: SearchResultRecipe(
                              name: e.strMeal ?? 'No Meal',
                              thumb: e.strMealThumb ?? ''),
                        );
                      }).toList());
                },
                loading: () => Center(child: CircularProgressIndicator()),
                error: (error, stack) => Text('Error: ${error.toString()}'))),
        SizedBox(height: 100)
      ]),
    );
  }
}
