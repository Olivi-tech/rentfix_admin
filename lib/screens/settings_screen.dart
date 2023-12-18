import 'package:flutter/material.dart';
import 'package:rent_fix_admin/constants/constants.dart';
import 'package:rent_fix_admin/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController finIdController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phonNoController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final globalKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    phonNoController.dispose();
    userNameController.dispose();
    fullNameController.dispose();
    finIdController.dispose();
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late Size mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteTeal,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: mq.width,
                height: mq.height,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
                                            padding: const EdgeInsets.only(
                                              left: 20,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Align(
                                                  alignment: Alignment.center,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomText(
                                                        label: 'James Anderson',
                                                        size: FontSize.large,
                                                        weight: FontWeight.w700,
                                                        color: AppColors.black,
                                                      ),
                                                      CustomText(
                                                        label: 'Admin',
                                                        size: FontSize.xMedium,
                                                        weight: FontWeight.w500,
                                                        color:
                                                            AppColors.tealGrey,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                CustomSize(
                                                  height: mq.height * 0.09,
                                                ),
                                                const CustomText(
                                                  label: 'Name',
                                                  size: FontSize.xMedium,
                                                  weight: FontWeight.w500,
                                                  color: AppColors.tealGrey,
                                                ),
                                                const CustomText(
                                                  label: 'James Anderson',
                                                  size: FontSize.xMedium,
                                                  weight: FontWeight.w500,
                                                  color: AppColors.black,
                                                ),
                                                CustomSize(
                                                  height: mq.height * 0.02,
                                                ),
                                                const CustomText(
                                                  label: 'Email',
                                                  size: FontSize.xMedium,
                                                  weight: FontWeight.w500,
                                                  color: AppColors.tealGrey,
                                                ),
                                                const CustomText(
                                                  label: 'username@email.com',
                                                  size: FontSize.xMedium,
                                                  weight: FontWeight.w500,
                                                  color: AppColors.black,
                                                ),
                                                CustomSize(
                                                  height: mq.height * 0.02,
                                                ),
                                                const CustomText(
                                                    label: 'Fin ID',
                                                    size: FontSize.xMedium,
                                                    weight: FontWeight.w500,
                                                    color: AppColors.tealGrey),
                                                const CustomText(
                                                  label: '#FIN-12934',
                                                  size: FontSize.xMedium,
                                                  weight: FontWeight.w500,
                                                  color: AppColors.black,
                                                ),
                                                CustomSize(
                                                  height: mq.height * 0.16,
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: FittedBox(
                                                    child: Row(
                                                      children: [
                                                        CustomText(
                                                          label:
                                                              'Member Since: ',
                                                          size: constraints
                                                                      .maxWidth >
                                                                  600
                                                              ? FontSize.xMedium
                                                              : FontSize.small,
                                                          weight:
                                                              FontWeight.w500,
                                                          color: AppColors
                                                              .tealGrey,
                                                        ),
                                                        CustomText(
                                                          label:
                                                              '11 August 2022',
                                                          size: constraints
                                                                      .maxWidth >
                                                                  600
                                                              ? FontSize.xMedium
                                                              : FontSize.small,
                                                          weight:
                                                              FontWeight.w500,
                                                          color:
                                                              AppColors.black,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
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
                                      image: AssetImage(AppImages.userImage),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        width: 5,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.circular(100),
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
                                top: 10, left: 20, right: mq.width * 0.02),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                              keyboardType: TextInputType.name,
                                              validator: (input) {
                                                if (input == null ||
                                                    input.isEmpty) {
                                                  return 'Please enter name';
                                                }

                                                return null;
                                              },
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
                                              hintText: 'johndoe@email.com',
                                              width: mq.width * 0.24,
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              validator: (input) {
                                                if (input == null ||
                                                    input.isEmpty) {
                                                  return 'Please enter name';
                                                }
                                                if (!isValidEmail(input)) {
                                                  return 'inValid';
                                                }

                                                return null;
                                              },
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
                                              keyboardType:
                                                  TextInputType.number,
                                              validator: (input) {
                                                if (input == null ||
                                                    input.isEmpty) {
                                                  return 'Please enter Fin Id';
                                                }

                                                return null;
                                              },
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
                                              keyboardType: TextInputType.name,
                                              validator: (input) {
                                                if (input == null ||
                                                    input.isEmpty) {
                                                  return 'Please enter name';
                                                }

                                                return null;
                                              },
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
                                    keyboardType: TextInputType.phone,
                                    validator: (input) {
                                      if (input == null || input.isEmpty) {
                                        return 'Please enter number';
                                      }

                                      return null;
                                    },
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
                                    keyboardType: TextInputType.streetAddress,
                                    validator: (input) {
                                      if (input == null || input.isEmpty) {
                                        return 'Please enter address';
                                      }

                                      return null;
                                    },
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
                                      onPressed: () {
                                        if (globalKey.currentState!
                                            .validate()) {
                                          FocusScope.of(context).unfocus();
                                        }
                                      },
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
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
