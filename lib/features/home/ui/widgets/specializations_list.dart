import 'package:advanced_course/core/helpers/spacing.dart';
import 'package:advanced_course/features/home/data/models/specialization_response_model.dart';
import 'package:advanced_course/features/home/ui/widgets/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsList extends StatelessWidget {
  SpecializationsList({super.key, required this.specializationDataList});
  List<SpecializationsData?>? specializationDataList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => SpecialityListViewItem(
          specializationsData: specializationDataList?[index],
        ),
        separatorBuilder: (context, index) => horizontalSpace(24),
        itemCount: specializationDataList!.length,
      ),
    );
  }
}
