import 'package:advanced_course/core/helpers/spacing.dart';
import 'package:advanced_course/core/theming/colors.dart';
import 'package:advanced_course/features/home/logic/home_cubit.dart';
import 'package:advanced_course/features/home/ui/widgets/doctor_blue_card.dart';
import 'package:advanced_course/features/home/ui/widgets/doctors_list.dart';
import 'package:advanced_course/features/home/ui/widgets/doctors_list_bloc_builder.dart';
import 'package:advanced_course/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:advanced_course/features/home/ui/widgets/home_top_bar.dart';
import 'package:advanced_course/features/home/ui/widgets/specializations_list.dart';
import 'package:advanced_course/features/home/ui/widgets/specializations_list_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.fromLTRB(
            20,
            16,
            20,
            28,
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorBlueCard(),
              verticalSpace(24),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              const SpecializationsListBlocBuilder(),
              verticalSpace(8),
              const DoctorsListBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
