import 'package:smart_ahwa/core/enums/snack_bar_type.dart';
import 'package:smart_ahwa/core/utils/app_images.dart';
import 'package:smart_ahwa/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SnackBarWidget extends StatelessWidget {
  final String message;
  final SnackBarType type;

  const SnackBarWidget({super.key, required this.message, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: _buildBoxDecoration(),
      child: Stack(
        clipBehavior: Clip.none,
        children: [_buildAppLogo(context), _buildContent(context)],
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withValues(alpha: 0.2),
          blurRadius: 8,
          spreadRadius: 2,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }

  Positioned _buildAppLogo(BuildContext context) {
    return Positioned(
      right: -5,
      top: -30,
      child: Image.asset(
        AppImages.imagesAhwaLogo,
        height: 50,
        // colorFilter: ColorFilter.mode(
        //   context.colorsScheme.blue0261a9,
        //   BlendMode.srcIn,
        // ),
      ),
    );
  }

  Column _buildContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_buildIcon(), const Gap(8), _buildMessageText(context)],
        ),
      ],
    );
  }

  SvgPicture _buildIcon() {
    return SvgPicture.asset(_getIconAsset(), height: 20);
  }

  String _getIconAsset() {
    switch (type) {
      case SnackBarType.error:
        return AppImages.imagesErrorIcon;
      case SnackBarType.success:
        return AppImages.imagesSuccessIcon;
      default:
        return AppImages.imagesPendingIcon;
    }
  }

  Widget _buildMessageText(BuildContext context) {
    return Text(
      message,
      textAlign: TextAlign.center,
      style: AppStyles.bold14(color: Color(0xff000000)),
    );
  }
}
