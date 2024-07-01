import 'package:advanced_course/core/helpers/spacing.dart';
import 'package:advanced_course/features/home/logic/home_cubit.dart';
import 'package:advanced_course/features/home/ui/widgets/doctors_shimmer_loading.dart';
import 'package:advanced_course/features/home/ui/widgets/speciality_shimmer_loading.dart';
import 'package:advanced_course/features/home/ui/widgets/specializations_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsListBlocBuilder extends StatelessWidget {
  const SpecializationsListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (prev, state) =>
          state is SpecializationsSuccess ||
          state is SpecializationsError ||
          state is SpecializationsLoading,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsError: (err) {
            return const SizedBox.shrink();
          },
          specializationsLoading: () => setupLoading(),
          specializationsSuccess: (specializationsSuccess) {
            return Column(
              children: [
                SpecializationsList(
                  specializationDataList: specializationsSuccess,
                ),
              ],
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  /// shimmer loading for specializations and doctors
  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }
}
