import 'package:advanced_course/core/assets_manager/assets_manager.dart';
import 'package:advanced_course/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            SVGsManager.appLogo,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            'DocDoc',
            style: TextStyles.font24BlackBold,
          )
        ],
      ),
    );
  }
}
