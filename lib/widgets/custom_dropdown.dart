import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_fix_admin/constants/constants.dart';
import 'package:rent_fix_admin/widgets/widgets.dart';

class DropDownWidget extends StatelessWidget {
  final List<String> itemList;

  final double iconWidth;
  final double iconHeight;
  final double horizontalPadding;
  final TextEditingController controller;
  final void Function(String?) onChanged;

  const DropDownWidget({
    super.key,
    required this.itemList,
    this.iconWidth = 16,
    this.iconHeight = 16,
    this.horizontalPadding = 14.0,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    late Size mq = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: DropdownButton(
        icon: SvgPicture.asset(
          AppImages.downArrowIcon,
          width: iconWidth,
          height: iconHeight,
          colorFilter:
              const ColorFilter.mode(AppColors.darkGrey, BlendMode.srcIn),
        ),
        menuMaxHeight: 300,
        underline: const SizedBox(),
        alignment: Alignment.center,
        items: itemList.map<DropdownMenuItem<String>>((String item) {
          return DropdownMenuItem(
            alignment: Alignment.center,
            enabled: true,
            value: item,
            child: Center(
                child: CustomText(
              label: item,
              color: AppColors.darkGreen,
              size: mq.width > 600 ? 14 : 10,
            )),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
