import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ContainerSlide extends StatelessWidget {
  const ContainerSlide({super.key});

  final List<String> imagePaths = const [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ImageSlideshow(
        width: double.infinity,
        height: 200,
        initialPage: 0,
        indicatorBackgroundColor: Colors.grey,
        onPageChanged: (value) {
          print('Page Changed: $value');
        },
        autoPlayInterval: 3000,
        isLoop: true,
        children: List.generate(
          imagePaths.length,
              (index) => _buildContainerSlide(
            height: 200,
            fit: BoxFit.cover,
            borderRadius: BorderRadius.circular(20),
            imagePath: imagePaths[index],
          ),
        ),
      ),
    );
  }

  Widget _buildContainerSlide({
    required double height,
    Color color = Colors.transparent,
    required BoxFit fit,
    required BorderRadius borderRadius,
    required String imagePath,
  }) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
        image: DecorationImage(image: AssetImage(imagePath), fit: fit),
      ),
    );
  }
}
