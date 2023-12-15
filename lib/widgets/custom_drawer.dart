import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_fix_admin/constants/constants.dart';
import 'package:rent_fix_admin/widgets/widgets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomSize(
          height: 30,
        ),
        SvgPicture.asset(
          AppImages.logo,
          height: 80,
          colorFilter: const ColorFilter.mode(
            AppColors.white,
            BlendMode.srcIn,
          ),
        ),
        const CustomSize(
          height: 20,
        ),
        CustomBorderedContainer(
          backgroundColor: AppColors.paleAqua,
          borderColor: AppColors.darkGreen,
          borderWidth: 5.0,
          child: buildDrawerItem(
            context: context,
            iconPath: AppImages.dashboardIcon,
            label: 'Dashboard',
            textColor: AppColors.darkGreen,
          ),
        ),
        const CustomSize(
          height: 10,
        ),
        CustomBorderedContainer(
          backgroundColor: AppColors.turquoise,
          borderColor: Colors.transparent,
          borderWidth: 0,
          child: buildDrawerItem(
            context: context,
            iconPath: AppImages.profileIcon,
            label: 'Tenants',
            textColor: AppColors.white,
          ),
        ),
        const CustomSize(
          height: 20,
        ),
        CustomBorderedContainer(
          backgroundColor: AppColors.turquoise,
          borderColor: Colors.transparent,
          borderWidth: 0,
          child: buildDrawerItem(
            context: context,
            iconPath: AppImages.paymentIcon,
            label: 'Payment',
            textColor: AppColors.white,
          ),
        ),
        const CustomSize(
          height: 20,
        ),
        CustomBorderedContainer(
          backgroundColor: AppColors.turquoise,
          borderColor: Colors.transparent,
          borderWidth: 0.0,
          child: buildDrawerItem(
            iconPath: AppImages.settingsIcon,
            label: 'Settings',
            context: context,
            textColor: AppColors.white,
          ),
        ),
        CustomSize(
          height: MediaQuery.of(context).size.height > 600 ? 250 : 50,
        ),
        CustomBorderedContainer(
          backgroundColor: AppColors.turquoise,
          borderColor: Colors.transparent,
          borderWidth: 0.0,
          child: buildDrawerItem(
            iconPath: AppImages.logoutIcon,
            label: 'Logout',
            textColor: AppColors.white,
            context: context,
          ),
        ),
      ],
    );
  }

  Widget buildDrawerItem({
    required BuildContext context,
    required String iconPath,
    required String label,
    required Color textColor,
  }) {
    return Row(
      children: [
        SvgPicture.asset(
          iconPath,
          height: 24,
          colorFilter: ColorFilter.mode(
            textColor,
            BlendMode.srcIn,
          ),
        ),
        const CustomSize(
          width: 5,
        ),
        CustomText(
          label: label,
          color: textColor,
          size: MediaQuery.of(context).size.width > 600
              ? FontSize.xxMedium
              : FontSize.small,
          weight: FontWeight.w600,
        ),
      ],
    );
  }
}
