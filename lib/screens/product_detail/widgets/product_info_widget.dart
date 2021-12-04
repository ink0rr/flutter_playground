import 'package:flutter/material.dart';
import 'package:flutter_playground/models/product_model.dart';

// TODO: Refactor code
class ProductInfoWidget extends StatelessWidget {
  final ProductModel product;

  const ProductInfoWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '${product.currency} ${product.priceSign}${product.price}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.favorite_border,
                size: 32,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              const Text('50 Terjual'),
              const SizedBox(width: 8),
              Text('⭐⭐⭐⭐⭐ ${product.rating ?? 0}'),
            ],
          ),
        ),
      ],
    );
  }
}
