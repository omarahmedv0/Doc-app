import 'package:advanced_course/core/helpers/spacing.dart';
import 'package:advanced_course/features/home/ui/widgets/doctors_list_item.dart';
import 'package:flutter/material.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => const DoctorsListItem(),
        separatorBuilder: (context, index) => verticalSpace(8),
        itemCount: 10,
      ),
    );
  }
}
