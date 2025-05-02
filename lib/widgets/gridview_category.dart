import 'package:flutter/material.dart';

class GridItem {
  final String title;
  final String imagePath;

  GridItem({required this.title, required this.imagePath});
}

class GridviewBuilderWidget extends StatelessWidget {
  GridviewBuilderWidget({super.key});

  final List<GridItem> gridItems = [
    GridItem(title: 'Item 1', imagePath: 'assets/images/1.jpg'),
    GridItem(title: 'Item 2', imagePath: 'assets/images/2.jpg'),
    GridItem(title: 'Item 3', imagePath: 'assets/images/3.jpg'),
    GridItem(title: 'Item 4', imagePath: 'assets/images/1.jpg'),
    GridItem(title: 'Item 5', imagePath: 'assets/images/2.jpg'),
    GridItem(title: 'Item 6', imagePath: 'assets/images/3.jpg'),
    // Add more if you want
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height, // Full screen height
      child: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,         // Number of columns
          crossAxisSpacing: 8,        // Horizontal space between tiles
          mainAxisSpacing: 8,         // Vertical space between tiles
          childAspectRatio: 3/4,      // Width / Height ratio of each tile
        ),
        itemCount: gridItems.length,
        itemBuilder: (context, index) {
          final item = gridItems[index];
          return GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tapped on ${item.title}')),
              );
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.asset(
                        item.imagePath,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      item.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
