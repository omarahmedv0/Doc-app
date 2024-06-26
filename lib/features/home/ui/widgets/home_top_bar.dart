import 'package:advanced_course/core/assets_manager/assets_manager.dart';
import 'package:advanced_course/core/theming/colors.dart';
import 'package:advanced_course/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Omar',
              style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              'How Are you Today?',
              style: TextStyles.font12DarkBlueRegular,
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
            ColorsManager.moreLighterGray,
          )),
          onPressed: () {},
          icon: SvgPicture.asset(
            SVGsManager.homeNotificationIcon,
          ),
        ),
      ],
    );
  }
}
