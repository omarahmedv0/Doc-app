import 'package:advanced_course/features/home/logic/home_cubit.dart';
import 'package:advanced_course/features/home/ui/widgets/doctors_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsListBlocBuilder extends StatelessWidget {
  const DoctorsListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (prev, current) =>
          current is DoctorsError || current is DoctorsSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctorsList) {
            return DoctorsList(
              doctorsList: doctorsList,
            );
          },
          doctorsError: (errorHandler) {
            return const SizedBox.shrink();
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
