import 'package:smart_ahwa/core/helper/decoretion.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'form_field_wrapper.dart';

class TableInformationSection extends StatelessWidget {
  final TextEditingController controller;

  const TableInformationSection({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Table Information',
          style: AppStyles.bold20(color: AppColors.brown),
        ),
        const Gap(16),
        StylizedFormField(
          label: 'Table Number (0 for takeaway)',
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: DecorationHelper.createInputDecoration('Enter table number'),
          ),
        ),
      ],
    );
  }
}
