import 'package:flutter/material.dart';

import 'widgets/add_to_cart_widget.dart';
import 'widgets/choose_size_widget.dart';
import 'widgets/product_desc_widget.dart';
import 'widgets/product_info_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  static String routeName = '/home/detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://img.freepik.com/free-photo/excited-white-girl-bright-stylish-glasses-posing-pink-dreamy-curly-woman-playing-with-her-ginger-hair-laughing_197531-11045.jpg',
              height: 360,
              fit: BoxFit.cover,
            ),
            const ProductInfoWidget(),
            const ChooseSizeWidget(),
            const ProductDescWidget(),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      floatingActionButton: const AddToCartWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
