import 'package:advanced_course/core/assets_manager/assets_manager.dart';
import 'package:advanced_course/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class SpecialityListViewItem extends StatelessWidget {
  SpecialityListViewItem({
    super.key,
    required this.specializationsData,
    required this.selectedIndex,
    required this.currentItemIndex,
  });
  SpecializationsData? specializationsData;
  int? selectedIndex;
  int? currentItemIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        currentItemIndex == selectedIndex
            ? Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorsManager.darkBlue,
                  ),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManager.lightBlue,
                  child: SvgPicture.asset(
                    SVGsManager.generalSpeciality,
                    height: 42.h,
                    width: 42.w,
                  ),
                ),
              )
            : CircleAvatar(
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
          specializationsData?.name ?? 'Specialization',
          style: currentItemIndex == selectedIndex
              ? TextStyles.font14DarkBlueBold
              : TextStyles.font12DarkBlueRegular,
        ),
      ],
    );
  }
}
