import 'package:flutter/material.dart';
import 'package:flutter_playground/models/product_model.dart';

import 'widgets/add_to_cart_widget.dart';
import 'widgets/choose_size_widget.dart';
import 'widgets/product_desc_widget.dart';
import 'widgets/product_info_widget.dart';

// TODO: Refactor code
class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  static String routeName = '/home/detail';

  @override
  Widget build(BuildContext context) {
    final ProductDetailScreenArgs args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailScreenArgs;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              args.product.imageLink,
              height: 360,
              fit: BoxFit.cover,
            ),
            ProductInfoWidget(product: args.product),
            const ChooseSizeWidget(),
            ProductDescWidget(product: args.product),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      floatingActionButton: const AddToCartWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class ProductDetailScreenArgs {
  final ProductModel product;

  ProductDetailScreenArgs({required this.product});
}
