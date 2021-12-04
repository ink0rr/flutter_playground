import 'package:flutter/material.dart';
import 'package:flutter_playground/models/product_model.dart';

class ProductDescWidget extends StatelessWidget {
  final ProductModel product;

  const ProductDescWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Description',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            product.description,
          ),
        ),
      ],
    );
  }
}
