import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class ChooseSizeWidget extends StatefulWidget {
  const ChooseSizeWidget({Key? key}) : super(key: key);

  @override
  _ChooseSizeWidgetState createState() => _ChooseSizeWidgetState();
}

class _ChooseSizeWidgetState extends State<ChooseSizeWidget> {
  int _currentIndex = 0;
  List<String> sizes = ['S', 'M', 'L', 'XL'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Choose your size'),
          Row(
            children: sizes
                .mapIndexed(
                  (index, element) => SizeSelectionItem(
                    text: element,
                    isSelected: index == _currentIndex,
                    onPressed: () {
                      setState(() => _currentIndex = index);
                    },
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}

class SizeSelectionItem extends StatelessWidget {
  const SizeSelectionItem({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final bool isSelected;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 8, 0),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isSelected ? Colors.black : Colors.grey[200],
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
