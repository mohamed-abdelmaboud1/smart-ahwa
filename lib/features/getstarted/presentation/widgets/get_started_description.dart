import 'package:smart_ahwa/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GetStartedDescription extends StatelessWidget {
  const GetStartedDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'With Ahwa, coffee is different!',
          textAlign: TextAlign.center,
          style: AppStyles.bold24(),
        ),
        const Gap(8),
        Text(
          'Manage your café professionally from order to payment with Fenjan',
          textAlign: TextAlign.center,
          style: AppStyles.semiBold14(),
        ),
        const Gap(8),
        Text(
          'Full control of your café – manage orders, sales, and more.',
          textAlign: TextAlign.center,
          style: AppStyles.regular14(
            color: Colors.white.withAlpha(179), // 0.7 * 255 ≈ 179
          ),
        ),
      ],
    );
  }
}
