import 'package:advanced_course/core/helpers/spacing.dart';
import 'package:advanced_course/features/home/data/models/specialization_response_model.dart';
import 'package:advanced_course/features/home/logic/home_cubit.dart';
import 'package:advanced_course/features/home/ui/widgets/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsList extends StatefulWidget {
  SpecializationsList({super.key, required this.specializationDataList});
  List<SpecializationsData?>? specializationDataList;

  @override
  State<SpecializationsList> createState() => _SpecializationsListState();
}

class _SpecializationsListState extends State<SpecializationsList> {
  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedSpecializationIndex = index;
            });
            context.read<HomeCubit>().getDoctorsList(
                  specializationId: widget.specializationDataList?[index]?.id,
                );
          },
          child: SpecialityListViewItem(
            specializationsData: widget.specializationDataList?[index], selectedIndex: index, currentItemIndex: selectedSpecializationIndex,
          ),
        ),
        separatorBuilder: (context, index) => horizontalSpace(24),
        itemCount: widget.specializationDataList!.length,
      ),
    );
  }
}
