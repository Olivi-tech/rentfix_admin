import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:rent_fix_admin/constants/constants.dart';
import 'package:rent_fix_admin/providers/index_transition_provider.dart';
import 'package:rent_fix_admin/screens/login_screen.dart';
import 'package:rent_fix_admin/widgets/widgets.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  late ScreenTransitionProvider screenTransitionProvider;

  @override
  void initState() {
    super.initState();
    screenTransitionProvider =
        Provider.of<ScreenTransitionProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    late Size mq = MediaQuery.of(context).size;
    return Consumer<ScreenTransitionProvider>(
        builder: (context, providerIndex, child) {
      return SingleChildScrollView(
        child: Container(
          height: mq.height,
          color: AppColors.turquoise,
          child: SingleChildScrollView(
            child: Column(
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
                InkWell(
                  onTap: () {
                    screenTransitionProvider.setIndex = 0;
                  },
                  child: CustomBorderedContainer(
                    backgroundColor: providerIndex.getIndex == 0
                        ? AppColors.paleAqua
                        : AppColors.turquoise,
                    borderColor: providerIndex.getIndex == 0
                        ? AppColors.darkGreen
                        : Colors.transparent,
                    borderWidth: 5.0,
                    child: buildDrawerItem(
                      textColor: providerIndex.getIndex == 0
                          ? AppColors.darkGreen
                          : AppColors.white,
                      context: context,
                      iconPath: AppImages.dashboardIcon,
                      label: 'Dashboard',
                    ),
                  ),
                ),
                const CustomSize(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    screenTransitionProvider.setIndex = 1;
                  },
                  child: CustomBorderedContainer(
                    backgroundColor: providerIndex.getIndex == 1
                        ? AppColors.paleAqua
                        : AppColors.turquoise,
                    borderColor: providerIndex.getIndex == 1
                        ? AppColors.darkGreen
                        : Colors.transparent,
                    borderWidth: 5.0,
                    child: buildDrawerItem(
                      textColor: providerIndex.getIndex == 1
                          ? AppColors.darkGreen
                          : AppColors.white,
                      context: context,
                      iconPath: AppImages.profileIcon,
                      label: 'Tenants',
                    ),
                  ),
                ),
                const CustomSize(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    screenTransitionProvider.setIndex = 2;
                  },
                  child: CustomBorderedContainer(
                    backgroundColor: providerIndex.getIndex == 2
                        ? AppColors.paleAqua
                        : AppColors.turquoise,
                    borderColor: providerIndex.getIndex == 2
                        ? AppColors.darkGreen
                        : Colors.transparent,
                    borderWidth: 5.0,
                    child: buildDrawerItem(
                      textColor: providerIndex.getIndex == 2
                          ? AppColors.darkGreen
                          : AppColors.white,
                      context: context,
                      iconPath: AppImages.paymentIcon,
                      label: 'Payment',
                    ),
                  ),
                ),
                const CustomSize(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    screenTransitionProvider.setIndex = 3;
                  },
                  child: CustomBorderedContainer(
                    backgroundColor: providerIndex.getIndex == 3
                        ? AppColors.paleAqua
                        : AppColors.turquoise,
                    borderColor: providerIndex.getIndex == 3
                        ? AppColors.darkGreen
                        : Colors.transparent,
                    borderWidth: 5.0,
                    child: buildDrawerItem(
                      textColor: providerIndex.getIndex == 3
                          ? AppColors.darkGreen
                          : AppColors.white,
                      iconPath: AppImages.settingsIcon,
                      label: 'Settings',
                      context: context,
                    ),
                  ),
                ),
                CustomSize(
                  height: mq.height > 600 ? mq.height * 0.4 : mq.height * 0.2,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: const LoginScreen()));
                    },
                    child:
                        // ? const CupertinoActivityIndicator(
                        //     color: Colors.red,
                        //   )
                        // :
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
                    )),
              ],
            ),
          ),
        ),
      );
    });
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
