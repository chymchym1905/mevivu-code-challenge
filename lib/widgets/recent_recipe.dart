import '../imports.dart';

class RecentRecipe extends StatelessWidget {
  const RecentRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),                
                image:
                    DecorationImage(image: AssetImage('assets/sqfood.jpg'), fit: BoxFit.cover))
          ),
          SizedBox(height: 8),
          Text('Trứng chiên', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Row(
            children: [
              CircleAvatar(
                radius: 10,
                backgroundImage: const AssetImage('assets/avatar.png'),
              ),
              const SizedBox(width: 6),
              Text(
                'Dau Gia Kien',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
