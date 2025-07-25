import '../imports.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab(
      {super.key,
      required this.name,
      required this.selected,
      required this.onTap});
  final String name;
  final bool selected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(5),
            splashColor:
                Theme.of(context).colorScheme.onPrimary.withOpacity(0.5),
            child: Ink(
                decoration: BoxDecoration(
                    color: selected
                        ? Theme.of(context).colorScheme.secondaryFixedDim
                        : Theme.of(context).colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(5)),
                padding: EdgeInsets.only(right: 10, left: 8, bottom: 4, top: 4),
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  Text(name,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: selected
                              ? Theme.of(context).colorScheme.onPrimary
                              : Theme.of(context).colorScheme.onSurface))
                ]))));
  }
}
