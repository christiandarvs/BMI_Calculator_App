import 'package:flutter/material.dart';

class RowLayout extends StatelessWidget {
  final Widget content1;
  final Widget content2;
  const RowLayout({super.key, required this.content1, required this.content2});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: content1,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: content2,
            ),
          ],
        ),
      ),
    );
  }
}
