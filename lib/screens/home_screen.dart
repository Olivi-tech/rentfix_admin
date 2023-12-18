import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_fix_admin/constants/constants.dart';
import 'package:rent_fix_admin/providers/index_transition_provider.dart';
import 'package:rent_fix_admin/screens/screens.dart';
import 'package:rent_fix_admin/widgets/custom_drawer.dart';
import 'package:rent_fix_admin/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    late Size mq = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteTeal,
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Row(
            children: [
              Expanded(
                flex: constraints.maxWidth > 600 ? 0 : 1,
                child: Container(
                  height: double.infinity,
                  color: AppColors.turquoise,
                  child: const CustomDrawer(),
                ),
              ),
              Expanded(
                flex: constraints.maxWidth > 600 ? 4 : 2,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: mq.width * 0.02,
                            left: mq.width * 0.019,
                            top: mq.width * 0.015),
                        child: Row(
                          children: [
                            CustomText(
                              label: 'Admin Panel',
                              color: AppColors.black,
                              size: constraints.maxWidth > 600
                                  ? 32
                                  : FontSize.small,
                              weight: FontWeight.w700,
                            ),
                            const Spacer(),
                            Container(
                              width: 53.64,
                              height: 53.64,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: AppColors.turquoise,
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    image: AssetImage(AppImages.profile),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            const CustomSize(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  label: 'Albert Flores',
                                  color: AppColors.black,
                                  size: constraints.maxWidth > 600
                                      ? 18
                                      : FontSize.small,
                                  weight: FontWeight.w700,
                                ),
                                CustomText(
                                  label: 'Admin',
                                  color: AppColors.black,
                                  size: constraints.maxWidth > 600
                                      ? 14
                                      : FontSize.small,
                                  weight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      CustomSize(height: mq.height * 0.02),
                      Container(
                        height: mq.height,
                        color: AppColors.whiteTeal,
                        child: Consumer<ScreenTransitionProvider>(
                            builder: (context, providerIndex, child) {
                          return providerIndex.getIndex == 0
                              ? const DashboardScreen()
                              : providerIndex.getIndex == 1
                                  ? const TenantsScreen()
                                  : providerIndex.getIndex == 2
                                      ? const PaymentScreen()
                                      : providerIndex.getIndex == 3
                                          ? const SettingsScreen()
                                          : const HomeScreen();
                        }),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
