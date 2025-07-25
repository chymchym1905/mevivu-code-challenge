import 'package:mevivu/shared/network_providers/meal.dart';

import '../imports.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key, required this.updateFilter});
  final void Function(Map<String, dynamic>) updateFilter;

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  int categorySelected = 0;
  int ingredientSelected = 0;
  int areaSelected = 0;
  Map<String, dynamic> filter = {};

  @override
  Widget build(BuildContext context) {
    final selectedColor = Theme.of(context).colorScheme.primaryFixed; // Yellow
    final borderColor = Colors.grey.shade300;

    Widget sectionTitle(String text) {
      return Row(
        children: [
          const Icon(Icons.forum, size: 16, color: Colors.black54),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      );
    }

    Widget chip(String text, bool selected, int index) {
      return Padding(
        padding: const EdgeInsets.only(right: 8, bottom: 8),
        child: ChoiceChip(
          label: Text(text),
          selected: selected,
          selectedColor: selectedColor,
          backgroundColor: Colors.white,
          side: BorderSide(color: borderColor),
          labelStyle: TextStyle(
              color: selected ? Colors.black : Colors.black87,
              fontWeight: selected ? FontWeight.bold : FontWeight.normal),
          onSelected: (value) {
            categorySelected = index;
            filter['c'] = text;
          },
        ),
      );
    }

    Widget chipArea(String text, bool selected, int index) {
      return Padding(
        padding: const EdgeInsets.only(right: 8, bottom: 8),
        child: ChoiceChip(
          label: Text(text),
          selected: selected,
          selectedColor: selectedColor,
          backgroundColor: Colors.white,
          side: BorderSide(color: borderColor),
          labelStyle: TextStyle(
              color: selected ? Colors.black : Colors.black87,
              fontWeight: selected ? FontWeight.bold : FontWeight.normal),
          onSelected: (value) {
            areaSelected = index;
            filter['a'] = text;
          },
        ),
      );
    }

    Widget chipIngredient(String text, bool selected, int index) {
      return Padding(
        padding: const EdgeInsets.only(right: 8, bottom: 8),
        child: ChoiceChip(
          label: Text(text),
          selected: selected,
          selectedColor: selectedColor,
          backgroundColor: Colors.white,
          side: BorderSide(color: borderColor),
          labelStyle: TextStyle(
              color: selected ? Colors.black : Colors.black87,
              fontWeight: selected ? FontWeight.bold : FontWeight.normal),
          onSelected: (value) {
            ingredientSelected = index;
            filter['i'] = text;
          },
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header with close and reset
            Row(
              children: [
                Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    customBorder: CircleBorder(),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.close,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                const Expanded(
                  child: Text(
                    'Lọc',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () {}, // Reset action
                  style: TextButton.styleFrom(
                    backgroundColor: selectedColor,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Text(
                    'Đặt lại',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),

            const SizedBox(height: 16),

            // Section: Danh mục
            sectionTitle('Danh mục'),
            const SizedBox(height: 8),
            Consumer(builder: (context, ref, child) {
              final category = ref.watch(fetchCategoriesProvider);
              return category.when(
                  data: (data) {
                    filter['c'] = data[0];
                    return Wrap(
                        children: List.generate(
                      data.length,
                      (index) {
                        return chip(
                            data[index], index == categorySelected, index);
                      },
                    ));
                  },
                  loading: () => Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Text('Error: ${error.toString()}'));
            }),

            const SizedBox(height: 12),

            // Section: Nguyên liệu
            sectionTitle('Nguyên liệu'),
            const SizedBox(height: 8),
            Consumer(builder: (context, ref, child) {
              final category = ref.watch(fetchIngredientsProvider);
              return category.when(
                  data: (data) {
                    filter['i'] = data[0];
                    return Wrap(
                        children: List.generate(
                      data.length,
                      (index) {
                        return chipIngredient(
                            data[index].strIngredient ?? 'Empty',
                            index == categorySelected,
                            index);
                      },
                    ));
                  },
                  loading: () => Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Text('Error: ${error.toString()}'));
            }),

            const SizedBox(height: 12),

            // Section: Khu vực
            sectionTitle('Khu vực'),
            const SizedBox(height: 8),
            Consumer(builder: (context, ref, child) {
              final category = ref.watch(fetchAreasProvider);
              return category.when(
                  data: (data) {
                    filter['a'] = data[0];
                    return Wrap(
                        children: List.generate(
                      data.length,
                      (index) {
                        return chipArea(
                            data[index], index == categorySelected, index);
                      },
                    ));
                  },
                  loading: () => Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Text('Error: ${error.toString()}'));
            }),

            const SizedBox(height: 20),

            // Confirm button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  widget.updateFilter(filter);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedColor,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text(
                  'Xác nhận',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
