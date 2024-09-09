// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:rating/presentation/pattern/colors.dart';

// ignore: must_be_immutable
class MyWidget extends StatefulWidget {
  int index;
  String imageUrl;
  int selectedIndex;
  Function(int) onClick;

  MyWidget({
    super.key,
    required this.index,
    required this.imageUrl,
    required this.selectedIndex,
    required this.onClick,
  });

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            widget.onClick(widget.index);
          },
        );
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color:
              widget.selectedIndex == widget.index ? activeColor : desibleColor,
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        child: Center(
          child: Text(
            widget.imageUrl,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
        ),
      ),
    );
  }
}
