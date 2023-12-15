import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_fix_admin/constants/constants.dart';
import 'package:rent_fix_admin/widgets/widgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteTeal,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Row(
            children: [
              Expanded(
                flex: constraints.maxWidth > 600 ? 4 : 1,
                child: Container(
                  height: double.infinity,
                  color: AppColors.whiteTeal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50, right: 40),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomSize(
                            height: 30,
                          ),
                          SvgPicture.asset(
                            AppImages.logo,
                            height: 124,
                            colorFilter: const ColorFilter.mode(
                                AppColors.turquoise, BlendMode.srcIn),
                          ),
                          const CustomSize(
                            height: 20,
                          ),
                          CustomText(
                            label: 'Welcome to Rentfix',
                            color: AppColors.black,
                            size: constraints.maxWidth > 600
                                ? FontSize.large
                                : FontSize.medium,
                            weight: FontWeight.w500,
                          ),
                          const CustomSize(
                            height: 5,
                          ),
                          CustomText(
                            label: 'Login to your account',
                            color: AppColors.black,
                            size: constraints.maxWidth > 600
                                ? FontSize.xxxLarge
                                : FontSize.large,
                            weight: FontWeight.w700,
                          ),
                          const CustomSize(
                            height: 30,
                          ),
                          const CustomText(
                            label: 'Email ID',
                            color: AppColors.darkGreen,
                            size: FontSize.small,
                            weight: FontWeight.w500,
                          ),
                          const CustomSize(
                            height: 5,
                          ),
                          CustomTextField(
                            hintText: 'johndoe@email.com',
                            width: constraints.maxWidth * 0.35,
                            borderRadius: 10,
                            fillColor: AppColors.white,
                            borderColor: AppColors.turquoise,
                          ),
                          const CustomSize(
                            height: 30,
                          ),
                          CustomButton(
                            width: constraints.maxWidth * 0.35,
                            height: 56,
                            radius: 10,
                            btnColor: AppColors.turquoise,
                            onPressed: () {},
                            borderColor: Colors.transparent,
                            textColor: Colors.white,
                            text: 'Confirm',
                          ),
                          CustomSize(
                            height: constraints.maxHeight * 0.22,
                          ),
                          const Align(
                            alignment: Alignment.center,
                            child: FittedBox(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CustomText(
                                        label:
                                            'By tapping Continue, you agree to our ',
                                        color: AppColors.black,
                                        size: 14,
                                        textAlign: TextAlign.center,
                                        weight: FontWeight.w400,
                                      ),
                                      CustomText(
                                        label: 'Terms and',
                                        color: AppColors.black,
                                        size: 14,
                                        decoration: TextDecoration.underline,
                                        textAlign: TextAlign.center,
                                        weight: FontWeight.w800,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CustomText(
                                        label: 'Condition ',
                                        color: AppColors.black,
                                        size: 14,
                                        decoration: TextDecoration.underline,
                                        textAlign: TextAlign.center,
                                        weight: FontWeight.w800,
                                      ),
                                      CustomText(
                                        label: '&',
                                        color: AppColors.black,
                                        size: 14,
                                        textAlign: TextAlign.center,
                                        weight: FontWeight.w800,
                                      ),
                                      CustomText(
                                        label: ' Privacy Policy',
                                        color: AppColors.black,
                                        size: 14,
                                        decoration: TextDecoration.underline,
                                        textAlign: TextAlign.center,
                                        weight: FontWeight.w800,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: constraints.maxWidth > 600 ? 4 : 1,
                child: Container(
                    height: double.infinity,
                    color: AppColors.turquoise,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 40,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomSize(
                              height: 20,
                            ),
                            CustomText(
                              label: 'Find Your Perfect\nPlace',
                              color: AppColors.white,
                              size: constraints.maxWidth > 600
                                  ? FontSize.exLarge
                                  : FontSize.large,
                              weight: FontWeight.w900,
                            ),
                            const CustomSize(
                              height: 5,
                            ),
                            CustomText(
                              label:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                              color: AppColors.white,
                              size: constraints.maxWidth > 600
                                  ? FontSize.xMedium
                                  : FontSize.small,
                              weight: FontWeight.w700,
                            ),
                            const CustomSize(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: CustomSize(
                                width: constraints.maxWidth > 600 ? 547 : 147,
                                height: constraints.maxWidth > 600 ? 425 : 328,
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.asset(
                                    AppImages.house,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          );
        },
      ),
    );
  }
}
