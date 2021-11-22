import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Widget? child;

  const CardWidget({
    Key? key,
    this.height,
    this.width,
    this.padding,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 3,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: child,
    );
  }
}
