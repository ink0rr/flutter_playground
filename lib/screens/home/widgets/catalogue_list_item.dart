import 'package:flutter/material.dart';

class CatalogueListItem extends StatelessWidget {
  const CatalogueListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //do something
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          _CatalogueThumbnail(),
          SizedBox(height: 8),
          _CatalogueDetail(),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}

class _CatalogueThumbnail extends StatelessWidget {
  const _CatalogueThumbnail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            'https://img.freepik.com/free-photo/excited-white-girl-bright-stylish-glasses-posing-pink-dreamy-curly-woman-playing-with-her-ginger-hair-laughing_197531-11045.jpg',
            fit: BoxFit.fill,
          ),
        ),
        const Positioned(
          height: 24,
          width: 24,
          bottom: 12,
          right: 12,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.favorite_border,
              size: 16,
            ),
          ),
        )
      ],
    );
  }
}

class _CatalogueDetail extends StatelessWidget {
  const _CatalogueDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Blazer Office Dress',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: const [
            Expanded(
              child: Text(
                'Rp50.000',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              '50 terjual',
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            SizedBox(width: 8),
            Text(
              '⭐ 4.5',
              style: TextStyle(fontSize: 10, color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
