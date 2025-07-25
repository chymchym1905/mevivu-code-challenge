import '../imports.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Center(
                child: Text('Trang cá nhân',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.primary)))),
        Divider(thickness: 1, height: 2),
        SizedBox(height: 20),
        ProfileCard(),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Danh sách yêu thích',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                  runSpacing: 16,
                  spacing: 16,
                  direction: Axis.horizontal,
                  children: [
                    item(),
                    item(),
                    item(),
                    item(),
                    item(),
                    item(),
                    item(),
                    item(),
                    item(),
                    item(),
                    item(),
                  ])
            ]))
      ],
    ));
  }

  Widget item() {
    return Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage('assets/sqfood.jpg'), fit: BoxFit.cover)));
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Avatar
          const CircleAvatar(
            radius: 40,
            backgroundImage:
                AssetImage('assets/avatar.png'), // replace with actual asset
          ),
          const SizedBox(height: 12),

          // Name
          const Text(
            'Đậu Gia Kiên',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color(0xFFB79300),
            ),
          ),

          const SizedBox(height: 16),

          // Stats
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildStatItem('Bài viết', '100'),
              _buildDivider(),
              _buildStatItem('Người theo dõi', '100'),
              _buildDivider(),
              _buildStatItem('Theo dõi', '100'),
            ],
          ),

          const SizedBox(height: 20),

          // Buttons
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.1),
            // Message Button
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
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryFixedDim,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8.0),
                                child: Center(
                                    child: Text('Follow',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white)))))))),
            const SizedBox(width: 16),
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
                                  child: Text('Messsage',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryFixedDim)),
                                )))))),
            SizedBox(width: MediaQuery.of(context).size.width * 0.1),
          ])
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 12, color: Colors.black54),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 40,
      width: 1,
      color: Colors.grey[300],
    );
  }
}
