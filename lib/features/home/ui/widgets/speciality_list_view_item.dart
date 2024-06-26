import 'package:advanced_course/core/assets_manager/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class SpecialityListViewItem extends StatelessWidget {
  const SpecialityListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: ColorsManager.lightBlue,
          child: SvgPicture.asset(
            SVGsManager.generalSpeciality,
            height: 40.h,
            width: 40.w,
          ),
        ),
        verticalSpace(8),
        Text(
          'Specialization',
          style: TextStyles.font12DarkBlueRegular,
        ),
      ],
    );
  }
}
