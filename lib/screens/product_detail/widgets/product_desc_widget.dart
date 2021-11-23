import 'package:flutter/material.dart';

class ProductDescWidget extends StatelessWidget {
  const ProductDescWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Description',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting '
            'industry. Lorem Ipsum has been the industry\'s standard dummy text'
            ' ever since the 1500s, when an unknown printer took a galley of '
            'type and scrambled it to make a type specimen book. It has '
            'survived not only five centuries, but also the leap into electronic '
            'typesetting, remaining essentially unchanged. It was popularised '
            'in the 1960s with the release of Letraset sheets containing Lorem '
            'Ipsum passages, and more recently with desktop publishing software '
            'like Aldus PageMaker including versions of Lorem Ipsum.',
          ),
        ),
      ],
    );
  }
}
