import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

/// Form Field Wrapper Widget
/// Provides consistent styling for form fields with labels
/// Reuses the existing styling patterns from the original app
class StylizedFormField extends StatelessWidget {
  final String label;
  final Widget child;
  final String? description;
  final bool required;

  const StylizedFormField({
    super.key,
    required this.label,
    required this.child,
    this.description,
    this.required = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: label,
            style: AppStyles.semiBold14(color: AppColors.brown),
            children:
                required
                    ? [
                      TextSpan(
                        text: ' *',
                        style: TextStyle(
                          color: Colors.red[600],
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ]
                    : null,
          ),
        ),
        if (description != null) ...[
          const Gap(4),
          Text(
            description!,
            style: AppStyles.regular12(
              color: AppColors.brown.withValues(alpha: 0.6),
            ),
          ),
        ],
        const Gap(8),
        child,
      ],
    );
  }
}
