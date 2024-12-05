import 'package:flutter/material.dart';

class MenuCategoryCard extends StatelessWidget {
  final String image;
  final String title;
  final int max;
  final int selected;

  const MenuCategoryCard({
    super.key,
    required this.image,
    required this.title,
    required this.max,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(image),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text(
            "$selected/$max",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
      ],
    );
  }
}
