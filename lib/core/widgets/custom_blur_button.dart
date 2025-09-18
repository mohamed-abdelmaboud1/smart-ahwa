import 'dart:ui';

import 'package:smart_ahwa/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../utils/app_styles.dart';

class CustomBlurButton extends StatelessWidget {
  const CustomBlurButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.height = 55,
    this.width,
    this.padding = const EdgeInsets.symmetric(vertical: 15),
    this.borderRadius = 8,
    this.fontSize,
  });

  final VoidCallback? onPressed;
  final String text;
  final bool isLoading;
  final double height;
  final double? width;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(borderRadius),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: height,
            width: width,
            padding: padding,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(
                color: AppColors.secondaryColor.withValues(alpha: 0.2),
                width: 1.2,
              ),
            ),
            alignment: Alignment.center,
            child:
                isLoading
                    ? LoadingAnimationWidget.threeArchedCircle(
                      color: Colors.white,
                      size: 25,
                    )
                    : Text(
                      text,
                      style: AppStyles.semiBold18(
                        color: Colors.white,
                      ).copyWith(fontSize: fontSize),
                    ),
          ),
        ),
      ),
    );
  }
}

          //  Row(
          //   children: [
          //     Gap(10),
          //     Icon(Icons.arrow_back, color: Color(0xffffffff)),
          //     Spacer(),
          //     Text(
          //       text,
          //       style: AppStyles.semiBold17(
          //         color: Colors.white,
          //       ).copyWith(fontSize: fontSize),
          //     ),
          //     Spacer(),
          //   ],
          // ),