import 'package:flutter/material.dart';
import 'package:flutter_playground/widgets/card_widget.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CardWidget(
            height: 50,
            width: 50,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: const [
                Icon(Icons.search),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        const CardWidget(
          height: 50,
          width: 50,
          child: Icon(Icons.qr_code_scanner_outlined),
        ),
      ],
    );
  }
}
