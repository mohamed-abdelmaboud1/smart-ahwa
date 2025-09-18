import 'package:smart_ahwa/core/helper/decoretion.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'form_field_wrapper.dart';

class CustomerInformationSection extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const CustomerInformationSection({
    super.key,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Customer Information',
          style: AppStyles.bold20(color: AppColors.brown),
        ),
        const Gap(16),
        StylizedFormField(
          label: 'Customer Name *',
          child: TextFormField(
            controller: controller,
            validator: validator,
            decoration: DecorationHelper.createInputDecoration('Enter customer name'),
          ),
        ),
      ],
    );
  }
}
