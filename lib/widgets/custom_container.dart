import 'package:flutter/material.dart';
import 'package:rent_fix_admin/constants/constants.dart';
import 'package:rent_fix_admin/widgets/widgets.dart';

class CustomBorderedContainer extends StatelessWidget {
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final Widget child;

  const CustomBorderedContainer({
    Key? key,
    required this.backgroundColor,
    required this.borderColor,
    required this.borderWidth,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border(
          left: BorderSide(
            width: borderWidth,
            color: borderColor,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: child,
      ),
    );
  }
}

class CustomTextContainer extends StatelessWidget {
  final double width;
  final double height;
  final String labelText;
  final String subLabelText;
  final Color containerColor;

  const CustomTextContainer({
    super.key,
    required this.width,
    required this.height,
    required this.labelText,
    required this.subLabelText,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        color: containerColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              label: labelText,
              color: AppColors.white,
              size: width > 200 ? FontSize.xxxLarge : FontSize.xxMedium,
              weight: FontWeight.w700,
            ),
            CustomText(
              label: subLabelText,
              color: AppColors.white,
              size: width > 200 ? FontSize.large : FontSize.xsmall,
              weight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
