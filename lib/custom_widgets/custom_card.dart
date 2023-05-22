import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color cardColor;
  final Widget contents;
  final VoidCallback voidCallback;
  final bool tappable;
  const CustomCard(
      {super.key,
      required this.contents,
      required this.cardColor,
      required this.voidCallback,
      required this.tappable});

  @override
  Widget build(BuildContext context) {
    return tappable
        ? InkWell(
            onTap: voidCallback,
            child: Card(
              color: cardColor,
              child: contents,
            ),
          )
        : Card(
            color: cardColor,
            child: contents,
          );
  }
}
