import 'package:flutter/material.dart';

class StarsWidget extends StatelessWidget {
  final int index;
  final String imagesUrl;
  final List<int> selectedIndex;
  final Function(int) onclick;

  StarsWidget({
    super.key,
    required this.index,
    required this.imagesUrl,
    required this.selectedIndex,
    required this.onclick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onclick(index); // Memanggil fungsi callback
      },
      child: Image.asset(
        selectedIndex.contains(index)
            ? "assets/icons/star1.png"
            : "assets/icons/star2.png",
        width: 50,
      ),
    );
  }
}
