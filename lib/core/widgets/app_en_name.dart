import 'package:smart_ahwa/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppEnName extends StatelessWidget {
  const AppEnName({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      'Ahwa!',
      textDirection: TextDirection.ltr,
      style: AppStyles.bold18().copyWith(
        fontFamily: 'Angkor',
        letterSpacing: 5,
        color: color ?? Colors.white,
      ),
    );
  }
}
