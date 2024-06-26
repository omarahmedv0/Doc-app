import 'package:advanced_course/core/helpers/spacing.dart';
import 'package:advanced_course/features/home/data/models/specialization_response_model.dart';
import 'package:advanced_course/features/home/ui/widgets/doctors_list_item.dart';
import 'package:flutter/material.dart';

class DoctorsList extends StatelessWidget {
   DoctorsList({super.key, this.doctorsList,});
  List<Doctors?>? doctorsList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) =>  DoctorsListItem(doctors: doctorsList?[index],),
        separatorBuilder: (context, index) => verticalSpace(8),
        itemCount: 10,
      ),
    );
  }
}
