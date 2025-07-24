import '../imports.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/landingpage.jpg'),
                    fit: BoxFit.cover,
                    opacity: 1)),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: MediaQuery.of(context).size.height * 0.15,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.6),
                Text(
                  'Bắt đầu với những món ăn',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 15),
                Material(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: InkWell(
                      onTap: () {
                        context.go('/home');
                      },
                      borderRadius: BorderRadius.circular(12),
                      splashColor: colorScheme.onPrimary.withOpacity(0.5),
                      child: Ink(
                          decoration: BoxDecoration(
                              color: colorScheme.primary,
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Bắt đầu',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                SizedBox(width: 8),
                                Icon(Icons.arrow_forward_rounded)
                              ],
                            ),
                          ))),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
