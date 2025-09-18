import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class SubmitOrderButton extends StatelessWidget {
  final bool isSubmitting;
  final bool isEnabled;
  final VoidCallback? onPressed;

  const SubmitOrderButton({
    super.key,
    required this.isSubmitting,
    required this.isEnabled,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: isSubmitting || !isEnabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.brown,
          foregroundColor: Colors.white,
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          textStyle: AppStyles.bold16(),
        ),
        child: isSubmitting
            ? const CircularProgressIndicator(color: Colors.white)
            : const Text('Create Order'),
      ),
    );
  }
}
