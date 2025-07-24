import '../imports.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedColor = const Color(0xFFFFD54F); // Yellow
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

    Widget chip(String text, bool selected) {
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
          onSelected: (_) {}, // Replace with actual logic
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
            Wrap(
              children: [
                chip('Danh mục 1', true),
                chip('Danh mục 2', false),
                chip('Danh mục', false),
                chip('Danh mục 3', false),
                chip('Danh mục 4', false),
              ],
            ),

            const SizedBox(height: 12),

            // Section: Nguyên liệu
            sectionTitle('Nguyên liệu'),
            const SizedBox(height: 8),
            Wrap(
              children: [
                chip('Thịt gà', true),
                chip('Thịt heo', false),
                chip('Danh mục', false),
                chip('Ức gà', false),
                chip('Chân gà', false),
              ],
            ),

            const SizedBox(height: 12),

            // Section: Khu vực
            sectionTitle('Khu vực'),
            const SizedBox(height: 8),
            Wrap(
              children: [
                chip('TP.HCM', false),
                chip('Bình Phước', false),
                chip('Đồng Nai', false),
                chip('An Giang', false),
                chip('Long An', true),
              ],
            ),

            const SizedBox(height: 20),

            // Confirm button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
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
