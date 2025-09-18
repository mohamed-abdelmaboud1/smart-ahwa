import 'package:smart_ahwa/core/utils/app_images.dart';
import 'package:smart_ahwa/core/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.height = 150,
    this.color = const Color(0xffffffff),
  });
  final double? height;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return CustomImage(AppImages.imagesAhwaLogo, height: height, color: color);
  }
}
