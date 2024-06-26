import 'package:advanced_course/core/helpers/spacing.dart';
import 'package:advanced_course/features/home/ui/widgets/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsList extends StatelessWidget {
  const SpecializationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const SpecialityListViewItem(),
        separatorBuilder: (context, index) => horizontalSpace(24),
        itemCount: 8,
      ),
    );
  }
}
