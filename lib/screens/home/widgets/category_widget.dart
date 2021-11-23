import 'package:flutter/material.dart';

import 'category_list_item.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            TextButton(
              onPressed: () => {
                //do something
              },
              child: const Text(
                "See all",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 96,
          child: ListView.builder(
            itemCount: 8,
            shrinkWrap: false,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return CategoryListItem(title: 'Category ${index + 1}');
            },
          ),
        )
      ],
    );
  }
}
