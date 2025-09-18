import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarIconBack extends StatelessWidget {
  const AppBarIconBack({
    super.key,
    this.color = Colors.black,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios_new,
        color: color,
      ),
    );
  }
}
