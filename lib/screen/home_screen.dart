import 'package:flutter/material.dart';
import 'package:flutter_playground/widget/search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: const [
                SearchWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
