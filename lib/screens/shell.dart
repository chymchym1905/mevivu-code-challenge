import '../imports.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class Shell extends StatefulWidget {
  const Shell({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  State<Shell> createState() => _ShellState();
}

class _ShellState extends State<Shell> {
  Widget _tabBuilder(int index, bool isActive, double width, double height) {
    switch (index) {
      case 0:
        return isActive ? Icon(Icons.home) : Icon(Icons.home_outlined);
      case 1:
        return isActive ? Icon(Icons.search) : Icon(Icons.search);
      case 2:
        return isActive ? Icon(Icons.bookmark) : Icon(Icons.bookmark_outline);
      default:
        return isActive ? Icon(Icons.person) : Icon(Icons.person_outline);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white, size: 56),
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: const CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        elevation: 0,
        
        tabBuilder: (index, isActive) => _tabBuilder(index, isActive, 20, 20),
        itemCount: 4,
        backgroundColor: Theme.of(context).colorScheme.surface,
        // splashColor: Theme.of(context).colorScheme.onPrimaryContainer,
        splashRadius: 0,
        scaleFactor: 0,
        shadow: Theme.of(context).extension<Shadows>()!.shadow,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapLocation: GapLocation.center,
        activeIndex: widget.navigationShell.currentIndex,
        onTap: (index) {
          widget.navigationShell.goBranch(index);
        },
      ),
    );
  }
}
