import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImage extends StatelessWidget {
  const 
  CustomImage(
    this.path, {
    super.key,
    this.color,
    this.width,
    this.height,
  });
  final String path;
  final Color? color;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final bool isSvg = _isSvg(path);
    final bool isNetworkImage = path.startsWith('http');

    ColorFilter? colorFilter =
        color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null;

    if (isNetworkImage) {
      if (isSvg) {
        return SvgPicture.network(
          path,
          colorFilter: colorFilter,
          width: width,
          height: height,
        );
      } else {
        return Image.network(
          path,
          color: color,
          width: width,
          height: height,
        );
      }
    } else {
      if (isSvg) {
        return SvgPicture.asset(
          path,
          colorFilter: colorFilter,
          width: width,
          height: height,
        );
      } else {
        return Image.asset(
          path,
          color: color,
          width: width,
          height: height,
        );
      }
    }
  }

  bool _isSvg(String path) {
    return path.split('.').last.toLowerCase() == 'svg';
  }
}
