import 'package:flutter/material.dart';
import 'package:rent_fix_admin/constants/constants.dart';
import 'package:rent_fix_admin/widgets/custom_drawer.dart';
import 'package:rent_fix_admin/widgets/widgets.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextEditingController recentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    late Size mq = MediaQuery.of(context).size;
    return Scaffold(
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
                child: const SingleChildScrollView(
                  child: CustomDrawer(),
                ),
              ),
            ),
            Expanded(
              flex: constraints.maxWidth > 600 ? 4 : 2,
              child: Container(
                height: double.infinity,
                color: AppColors.whiteTeal,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomSize(
                        height: 30,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(right: 50, left: mq.width * 0.019),
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
                      const CustomSize(
                        height: 20,
                      ),
                      SizedBox(
                        width: mq.width,
                        height: mq.height,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: ShapeDecoration(
                                    color: AppColors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Image.asset(AppImages.backgorund),
                                          Expanded(
                                            child: Container(
                                                color: Colors.white,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: mq.height * 0.09),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      left: 20,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              CustomText(
                                                                label:
                                                                    'James Anderson',
                                                                size: FontSize
                                                                    .large,
                                                                weight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: AppColors
                                                                    .black,
                                                              ),
                                                              CustomText(
                                                                label: 'Admin',
                                                                size: FontSize
                                                                    .xMedium,
                                                                weight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: AppColors
                                                                    .tealGrey,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        CustomSize(
                                                          height:
                                                              mq.height * 0.09,
                                                        ),
                                                        const CustomText(
                                                          label: 'Name',
                                                          size:
                                                              FontSize.xMedium,
                                                          weight:
                                                              FontWeight.w500,
                                                          color: AppColors
                                                              .tealGrey,
                                                        ),
                                                        const CustomText(
                                                          label:
                                                              'James Anderson',
                                                          size:
                                                              FontSize.xMedium,
                                                          weight:
                                                              FontWeight.w500,
                                                          color:
                                                              AppColors.black,
                                                        ),
                                                        CustomSize(
                                                          height:
                                                              mq.height * 0.02,
                                                        ),
                                                        const CustomText(
                                                          label: 'Email',
                                                          size:
                                                              FontSize.xMedium,
                                                          weight:
                                                              FontWeight.w500,
                                                          color: AppColors
                                                              .tealGrey,
                                                        ),
                                                        const CustomText(
                                                          label:
                                                              'username@email.com',
                                                          size:
                                                              FontSize.xMedium,
                                                          weight:
                                                              FontWeight.w500,
                                                          color:
                                                              AppColors.black,
                                                        ),
                                                        CustomSize(
                                                          height:
                                                              mq.height * 0.02,
                                                        ),
                                                        const CustomText(
                                                            label: 'Fin ID',
                                                            size: FontSize
                                                                .xMedium,
                                                            weight:
                                                                FontWeight.w500,
                                                            color: AppColors
                                                                .tealGrey),
                                                        const CustomText(
                                                          label: '#FIN-12934',
                                                          size:
                                                              FontSize.xMedium,
                                                          weight:
                                                              FontWeight.w500,
                                                          color:
                                                              AppColors.black,
                                                        ),
                                                        CustomSize(
                                                          height:
                                                              mq.height * 0.16,
                                                        ),
                                                        const Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CustomText(
                                                                label:
                                                                    'Member Since: ',
                                                                size: FontSize
                                                                    .xMedium,
                                                                weight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: AppColors
                                                                    .tealGrey),
                                                            CustomText(
                                                              label:
                                                                  '11 August 2022',
                                                              size: FontSize
                                                                  .xMedium,
                                                              weight: FontWeight
                                                                  .w500,
                                                              color: AppColors
                                                                  .black,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                          )
                                        ],
                                      ),
                                      Positioned(
                                        top: mq.height * 0.099,
                                        child: Container(
                                          width: mq.width * 0.099,
                                          height: mq.width * 0.099,
                                          decoration: ShapeDecoration(
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  AppImages.userImage),
                                              fit: BoxFit.cover,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                width: 5,
                                                strokeAlign: BorderSide
                                                    .strokeAlignOutside,
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              CustomSize(
                                width: mq.width * 0.02,
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: ShapeDecoration(
                                    color: AppColors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 10,
                                        left: 20,
                                        right: mq.width * 0.02),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const CustomText(
                                          label: 'Personal Information',
                                          size: FontSize.large,
                                          weight: FontWeight.w700,
                                          color: AppColors.black,
                                        ),
                                        CustomSize(
                                          height: mq.height * 0.02,
                                        ),
                                        const Divider(
                                          color: Color(0xFFF0F0F0),
                                        ),
                                        CustomSize(
                                          height: mq.height * 0.04,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const CustomText(
                                                    label: 'Full Name',
                                                    size: FontSize.xxMedium,
                                                    weight: FontWeight.w400,
                                                    color: AppColors.tealGrey,
                                                  ),
                                                  CustomSize(
                                                    height: mq.height * 0.02,
                                                  ),
                                                  CustomTextField(
                                                    hintText: 'James Anderson',
                                                    borderRadius: 10,
                                                    width: mq.width * 0.24,
                                                    fillColor: AppColors.white,
                                                    borderColor:
                                                        const Color(0xFFDDE5ED),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            CustomSize(
                                              width: mq.width * 0.02,
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const CustomText(
                                                    label: 'Email',
                                                    size: FontSize.xxMedium,
                                                    weight: FontWeight.w400,
                                                    color: AppColors.tealGrey,
                                                  ),
                                                  CustomSize(
                                                    height: mq.height * 0.02,
                                                  ),
                                                  CustomTextField(
                                                    hintText:
                                                        'johndoe@email.com',
                                                    width: mq.width * 0.24,
                                                    borderRadius: 10,
                                                    fillColor: AppColors.white,
                                                    borderColor:
                                                        const Color(0xFFDDE5ED),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        CustomSize(
                                          height: mq.height * 0.04,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const CustomText(
                                                    label: 'Fin ID',
                                                    size: FontSize.xxMedium,
                                                    weight: FontWeight.w400,
                                                    color: AppColors.tealGrey,
                                                  ),
                                                  CustomSize(
                                                    height: mq.height * 0.02,
                                                  ),
                                                  CustomTextField(
                                                    hintText: '#FIN-12934',
                                                    width: mq.width * 0.24,
                                                    borderRadius: 10,
                                                    fillColor: AppColors.white,
                                                    borderColor:
                                                        const Color(0xFFDDE5ED),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            CustomSize(
                                              width: mq.width * 0.02,
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const CustomText(
                                                    label: 'User Name',
                                                    size: FontSize.xxMedium,
                                                    weight: FontWeight.w400,
                                                    color: AppColors.tealGrey,
                                                  ),
                                                  CustomSize(
                                                    height: mq.height * 0.02,
                                                  ),
                                                  CustomTextField(
                                                    hintText: '@KendelJanner',
                                                    width: mq.width * 0.24,
                                                    borderRadius: 10,
                                                    fillColor: AppColors.white,
                                                    borderColor:
                                                        const Color(0xFFDDE5ED),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        CustomSize(
                                          height: mq.height * 0.04,
                                        ),
                                        const CustomText(
                                          label: 'Phone Number',
                                          size: FontSize.xxMedium,
                                          weight: FontWeight.w400,
                                          color: AppColors.tealGrey,
                                        ),
                                        CustomSize(
                                          height: mq.height * 0.02,
                                        ),
                                        CustomTextField(
                                          hintText: '+66 214 492 231',
                                          width: mq.width * 0.35,
                                          borderRadius: 10,
                                          fillColor: AppColors.white,
                                          borderColor: const Color(0xFFDDE5ED),
                                        ),
                                        CustomSize(
                                          height: mq.height * 0.04,
                                        ),
                                        const CustomText(
                                          label: 'Address',
                                          size: FontSize.xxMedium,
                                          weight: FontWeight.w400,
                                          color: AppColors.tealGrey,
                                        ),
                                        CustomSize(
                                          height: mq.height * 0.02,
                                        ),
                                        CustomTextField(
                                          hintText:
                                              '10 Anson Road, International Plaza, #10-11, 079903 Singapore, Singapore',
                                          width: mq.width * 0.35,
                                          borderRadius: 10,
                                          fillColor: AppColors.white,
                                          borderColor: const Color(0xFFDDE5ED),
                                        ),
                                        CustomSize(
                                          height: mq.height * 0.08,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: CustomButton(
                                            width: constraints.maxWidth * 0.1,
                                            height: 56,
                                            radius: 10,
                                            btnColor: AppColors.turquoise,
                                            onPressed: () {},
                                            borderColor: Colors.transparent,
                                            textColor: Colors.white,
                                            text: 'Save',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
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
          ],
        );
      }),
    );
  }
}
