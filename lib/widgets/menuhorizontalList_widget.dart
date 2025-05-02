import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class MenuItem {
  final String title;
  final String imagePath;

  MenuItem({required this.title, required this.imagePath});
}

class MenuhorizontallistWidget extends StatelessWidget {
  final double? itemWidth;
  final double? itemHeight;
  final Color? itemColor;

  // Add a list of MenuItems
  final List<MenuItem> menuItems = [
    MenuItem(title: 'DeskTop', imagePath: 'assets/images/logo.png'),
    MenuItem(title: 'LabTop', imagePath: 'assets/images/logo.png'),
    MenuItem(title: 'USB Card', imagePath: 'assets/images/logo.png'),
    MenuItem(title: 'DeskTop', imagePath: 'assets/images/logo.png'),
    MenuItem(title: 'LabTop', imagePath: 'assets/images/logo.png'),
    MenuItem(title: 'USB Card', imagePath: 'assets/images/logo.png'),
    // You can add more items here easily
  ];

  MenuhorizontallistWidget({
    super.key,
    required this.itemWidth,
    required this.itemHeight,
    this.itemColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        width: double.infinity,
        height: (itemHeight ?? 50) + 10,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            final item = menuItems[index];
            return Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: itemWidth ?? 50,
                height: itemHeight ?? 50,
                decoration: BoxDecoration(
                  color: itemColor ?? Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      item.imagePath,
                      width: 40,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      item.title,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
