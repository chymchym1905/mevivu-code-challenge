import 'package:mevivu/shared/network_providers/meal.dart';

import '../imports.dart';

class MealDetailPage extends ConsumerWidget {
  const MealDetailPage({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mealdetail = ref.watch(fetchMealByIdProvider(id));
    return Scaffold(
      body: SafeArea(
          child: mealdetail.when(
              data: (data) {
                final pairs = data.ingredientMeasurePairs;

                final pairText =
                    pairs.map((e) => '- ${e.$1}: ${e.$2}').join('\n');
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Top Image with overlay
                      Stack(
                        children: [
                          Image.network(data.strMealThumb ?? ''),
                          Positioned(
                            top: 16,
                            left: 16,
                            child: Icon(Icons.arrow_back, color: Colors.white),
                          ),
                        ],
                      ),
                      // Thumbnails
                      SizedBox(
                        height: 64,
                        child: ListView.separated(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          separatorBuilder: (_, __) => const SizedBox(width: 8),
                          itemBuilder: (context, index) => ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/thumbnail.jpg',
                              width: 64,
                              height: 64,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      // Title and Info
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.strMeal ?? 'Unknown Recipe',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Text(data.strTags ?? 'No tags'),
                            const SizedBox(height: 8),
                            Row(
                              children: const [
                                Icon(Icons.star, color: Colors.amber, size: 20),
                                SizedBox(width: 4),
                                Text('4.2'),
                                SizedBox(width: 8),
                                Text('|'),
                                SizedBox(width: 8),
                                Text('120 đánh giá'),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 16,
                                  backgroundImage:
                                      AssetImage('assets/avatar.png'),
                                ),
                                const SizedBox(width: 8),
                                const Text('Dau Gia Kien',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange)),
                              ],
                            )
                          ],
                        ),
                      ),
                      // Tabs
                      DefaultTabController(
                        length: 2,
                        child: Column(
                          children: [
                            const TabBar(
                              labelColor: Colors.orange,
                              unselectedLabelColor: Colors.black,
                              tabs: [
                                Tab(text: 'Nguyên liệu'),
                                Tab(text: 'Chế biến'),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(16),
                              height: 400,
                              child: TabBarView(
                                children: [
                                  SingleChildScrollView(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                              child: Text(pairText))
                                        ]),
                                  ),
                                  SingleChildScrollView(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                              child: Text(
                                                  data.strInstructions ??
                                                      'No Instruction'))
                                        ]),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      // Video button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF6E8B1),
                            foregroundColor: Colors.black,
                            minimumSize: const Size(double.infinity, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.play_circle_fill),
                          label: const Text('Xem video'),
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                );
              },
              loading: () => Center(child: CircularProgressIndicator()),
              error: (error, stack) => Text('Error: ${error.toString()}'))),
    );
  }
}
