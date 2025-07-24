import 'package:mevivu/widgets/bottomsheet.dart';
import 'package:mevivu/widgets/search_recipe.dart';

import '../imports.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 16),
      Container(
        padding:
            const EdgeInsets.only(top: 26, bottom: 26, left: 16, right: 16),
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
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
                      return FilterBottomSheet();
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.filter_alt_rounded,
                    color: Theme.of(context).colorScheme.primary,
                    size: 36,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Wrap(spacing: 8, runSpacing: 8, direction: Axis.horizontal, children: [
        SearchResultRecipe(),
        SearchResultRecipe(),
        SearchResultRecipe(),
        SearchResultRecipe(),
      ])
    ]);
  }
}
