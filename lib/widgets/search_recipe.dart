import '../imports.dart';

class SearchResultRecipe extends StatefulWidget {
  const SearchResultRecipe(
      {super.key, required this.name, required this.thumb});
  final String name;
  final String thumb;

  @override
  State<SearchResultRecipe> createState() => _SearchResultRecipeState();
}

class _SearchResultRecipeState extends State<SearchResultRecipe> {
  bool _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with overlay and heart icon
          Stack(
            children: [
              // Square image
              AspectRatio(
                aspectRatio: 1, // makes it square
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    widget.thumb, // Replace with your image
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Top right heart icon
              Positioned(
                  top: 8,
                  right: 8,
                  child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                          customBorder: CircleBorder(),
                          onTap: () {
                            setState(() {
                              _isFavorite = !_isFavorite;
                            });
                          },
                          child: Ink(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 4)
                                  ]),
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(
                                _isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color:
                                    _isFavorite ? Colors.red : Colors.grey[400],
                                size: 20,
                              )))))
            ],
          ),

          const SizedBox(height: 8),

          // Title
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(widget.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis)),

          const SizedBox(height: 4),

          // Author + Duration
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    'By Little Pony',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 4),
                const Icon(Icons.schedule, size: 14, color: Colors.amber),
                const SizedBox(width: 2),
                const Text(
                  '20m',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
