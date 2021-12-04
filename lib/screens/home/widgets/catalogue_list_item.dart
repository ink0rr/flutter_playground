import 'package:flutter/material.dart';
import 'package:flutter_playground/models/product_model.dart';
import 'package:flutter_playground/screens/product_detail/product_detail_screen.dart';

class CatalogueListItem extends StatelessWidget {
  const CatalogueListItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          ProductDetailScreen.routeName,
          arguments: ProductDetailScreenArgs(product: product),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _CatalogueThumbnail(
            imageLink: product.imageLink,
          ),
          const SizedBox(height: 8),
          _CatalogueDetail(
            product: product,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class _CatalogueThumbnail extends StatelessWidget {
  const _CatalogueThumbnail({
    Key? key,
    required this.imageLink,
  }) : super(key: key);

  final String imageLink;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            imageLink,
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
  final ProductModel product;

  const _CatalogueDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                '${product.currency} ${product.priceSign}${product.price}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              '50 terjual',
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            const SizedBox(width: 8),
            Text(
              '⭐ ${product.rating ?? 0}',
              style: const TextStyle(fontSize: 10, color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
