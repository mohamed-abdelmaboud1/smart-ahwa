import 'package:smart_ahwa/core/constants/constant.dart';
import 'package:smart_ahwa/core/widgets/common_header.dart';
import 'package:smart_ahwa/features/getstarted/presentation/widgets/get_started_button.dart';
import 'package:smart_ahwa/features/getstarted/presentation/widgets/get_started_description.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_images.dart';

class GetStartedBody extends StatelessWidget {
  const GetStartedBody({super.key});

  static const BoxDecoration _backgroundDecoration = BoxDecoration(
    image: DecorationImage(
      image: AssetImage(AppImages.imagesPaymentBackgroundHighQuality),
      fit: BoxFit.cover,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: _backgroundDecoration,
      child: Padding(
        padding: const EdgeInsets.all(kHorizontalPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            CommonHeader(),
            Gap(50),
            GetStartedDescription(),
            Spacer(),
            GetStartedButton(),
            Gap(50),
          ],
        ),
      ),
    );
  }
}
