import 'package:flutter/material.dart';
import 'package:rent_fix_admin/constants/constants.dart';
import 'package:rent_fix_admin/widgets/widgets.dart';

class TenantsScreen extends StatefulWidget {
  const TenantsScreen({super.key});

  @override
  State<TenantsScreen> createState() => _TenantsScreenState();
}

class _TenantsScreenState extends State<TenantsScreen> {
  TextEditingController recentController = TextEditingController();
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
              Padding(
                padding: EdgeInsets.only(
                    right: mq.width * 0.02, left: mq.width * 0.019),
                child: Row(
                  children: [
                    CustomText(
                      label: 'Tenant List',
                      color: AppColors.black,
                      size: constraints.maxWidth > 600
                          ? FontSize.large
                          : FontSize.small,
                      weight: FontWeight.w600,
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CustomTextField(
                          height: 48,
                          width: constraints.maxWidth > 600
                              ? mq.width * 0.2
                              : mq.width * 0.04,
                          iconData: Icons.search,
                          isBorder: true,
                          borderRadius: 22,
                          borderColor: Colors.transparent,
                          hintText: 'Search here...',
                          fillColor: Colors.white),
                    ),
                    const CustomSize(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CustomTextField(
                        borderRadius: 38,
                        width: constraints.maxWidth > 600
                            ? mq.width * 0.1
                            : mq.width * 0.04,
                        height: 40,
                        hintColor: AppColors.darkGrey,
                        readOnly: true,
                        hintText: 'Recent',
                        borderColor: AppColors.darkGrey,
                        controller: recentController,
                        suffixIcon: DropDownWidget(
                          itemList: const ['1', '2'],
                          controller: recentController,
                          onChanged: (String? selectedOption) {
                            recentController.text = selectedOption ?? '';
                          },
                        ),
                        fillColor: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: mq.width * 0.02,
                  left: mq.width * 0.019,
                  top: mq.width * 0.02,
                  bottom: mq.width * 0.02,
                ),
                child: Container(
                  decoration: ShapeDecoration(
                    color: AppColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Table(
                      defaultColumnWidth: const FixedColumnWidth(196),
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: [
                        // Column Headers
                        TableRow(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                          ),
                          children: [
                            for (var columnName in [
                              '#',
                              'Name',
                              'Email ID',
                              'Fin ID',
                              'Pay Slip',
                              'Status',
                            ])
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 15, left: 15, bottom: 15, right: 15),
                                child: CustomText(
                                  label: columnName,
                                  size: FontSize.small,
                                  weight: FontWeight.w600,
                                  color: AppColors.black,
                                ),
                              ),
                          ],
                        ),
                        // Data Rows
                        for (int row = 0; row < 6; row++) ...[
                          TableRow(children: [
                            for (int i = 0; i <= 5; i++)
                              const Divider(
                                height: 1,
                                thickness: 1,
                                color: AppColors.blueTeal,
                              ),
                          ]),
                          TableRow(
                            decoration: BoxDecoration(
                              color: row % 2 == 0
                                  ? AppColors.lightWhite
                                  : Colors.white,
                            ),
                            children: [
                              for (var data in [
                                '1',
                                'Jacob Miller',
                                'username@email.com',
                                'S9418641B',
                                'View Here',
                                'Pending',
                              ])
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 15, left: 15, right: 80),
                                  child: data.contains('View Here')
                                      ? CustomText(
                                          label: data,
                                          color: Colors.blue,
                                          size: FontSize.small,
                                          decoration: TextDecoration.underline,
                                          decorationColor: Colors.blue,
                                          weight: FontWeight.w400,
                                        )
                                      : data.contains('Pending')
                                          ? Container(
                                              width: 50,
                                              height: 30,
                                              decoration: ShapeDecoration(
                                                color: Colors.blue,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(24),
                                                ),
                                              ),
                                              child: Center(
                                                child: CustomText(
                                                  label: data,
                                                  color: Colors.white,
                                                  size: FontSize.small,
                                                  weight: FontWeight.w400,
                                                ),
                                              ),
                                            )
                                          : CustomText(
                                              label: data,
                                              color: AppColors.tealGrey,
                                              size: FontSize.small,
                                              weight: FontWeight.w400,
                                            ),
                                ),
                            ],
                          ),
                        ]
                      ],
                    ),
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
