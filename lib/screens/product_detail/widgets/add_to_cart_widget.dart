import 'package:flutter/material.dart';

class AddToCartWidget extends StatelessWidget {
  const AddToCartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 8),
            Text(
              'Add to Cart',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
