import 'package:smart_ahwa/core/widgets/app_logo.dart';
import 'package:flutter/material.dart';

class CommonHeader extends StatelessWidget {
  const CommonHeader({super.key, this.color = const Color(0xffffffff)});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [AppLogo(color: color)],
    );
  }
}
