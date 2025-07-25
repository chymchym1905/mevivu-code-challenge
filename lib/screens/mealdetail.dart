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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Image with overlay
              Stack(
                children: [
                  Image.asset('assets/banner.jpg'),
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
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                    const Text(
                      'Cách chiên trứng một cách cung phu',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    const Text('Cách chiên trứng một cách cung phu'),
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
                          backgroundImage: AssetImage('assets/avatar.png'),
                        ),
                        const SizedBox(width: 8),
                        const Text('Đinh Trọng Phúc',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.orange)),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Dành cho 2-4 người ăn',
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 8),
                                Text('300g chân gà, luộc trong 20 phút\n'
                                    '2 chiếc xúc xích bò\n'
                                    '5 viên thịt bò\n'
                                    '100g bành tráng, luộc cho đến khi mềm\n'
                                    '1 quả trứng đánh tan\n'
                                    '50 cái kén, cắt thành 4 miếng'),
                                SizedBox(height: 16),
                                Text('Đối với bột gia vị',
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 8),
                                Text('15g tỏi\n'
                                    '39 nấm tôm\n'
                                    '25g hành tím\n'
                                    '50g gừng thơm\n'
                                    '100g ớt đỏ lớn\n'
                                    '50g ớt cay\n'
                                    '7g muối\n'
                                    '15g đường\n'
                                    '15g hành tây chiên\n'
                                    '25g bột gà\n'
                                    '50ml dầu ăn'),
                              ],
                            ),
                          ),
                          Center(child: Text('Chế biến content')), // Tab 2 placeholder
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
        ),
      ),
    );
  }
}
