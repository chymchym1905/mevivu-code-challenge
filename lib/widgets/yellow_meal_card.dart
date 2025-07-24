import 'package:flutter/material.dart';

class YellowMealCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String author;
  final String duration;
  final VoidCallback? onBookmarkPressed;

  const YellowMealCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    this.author = 'Jacob Jones',
    this.duration = '20 Mins',
    this.onBookmarkPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Stack(
        children: [
          Column(children: [
            SizedBox(height: 80),
            Container(
                width: 160,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFD54F), // Yellow background
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(children: [
                  SizedBox(height: 60),
                  // Title - always occupies 2 lines
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                    child: Container(
                      height: 44, // Fixed height for 2 lines of text
                      alignment: Alignment.center,
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF795548), // Brown text color
                          height: 1.2, // Line height
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
      
                  // By author
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Tạo bởi',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.brown[300],
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          author,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFF795548),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
      
                  // Duration and bookmark
                  Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(duration,
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF795548))),
                            Material(
                                type: MaterialType.transparency,
                                child: InkWell(
                                    customBorder: const CircleBorder(),
                                    onTap: onBookmarkPressed,
                                    child: const Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Icon(Icons.bookmark_outline,
                                            color: Color(0xFF795548), size: 20))))
                          ]))
                ])),
          ]),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
