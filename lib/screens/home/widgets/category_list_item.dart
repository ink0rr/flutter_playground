import 'package:flutter/material.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(
              'https://i.pinimg.com/originals/00/0a/99/000a99df942d55d5be69a7d5c1a43319.jpg',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(title)
        ],
      ),
    );
  }
}
