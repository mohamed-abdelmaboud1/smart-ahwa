import 'package:smart_ahwa/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/border_beam.dart';
import '../../../../core/widgets/custom_blur_button.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BorderBeam(
      duration: 7,
      borderWidth: 2,
      colorFrom: Colors.brown.shade800,
      colorTo: Colors.white,
      staticBorderColor: Colors.transparent,
      borderRadius: BorderRadius.circular(8),
      child: CustomBlurButton(
        onPressed: () {
          context.go(Routes.smartAhwaMain);
        },
        text: 'Get Started',
      ),
    );
  }
}
