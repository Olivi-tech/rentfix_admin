import 'package:flutter/material.dart';
import 'package:rent_fix_admin/constants/constants.dart';
import 'package:rent_fix_admin/widgets/widgets.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  TextEditingController recentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    late Size mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteTeal,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: mq.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomTextContainer(
                      containerColor: AppColors.darkBlue,
                      width: constraints.maxWidth > 600
                          ? mq.width * 0.19
                          : mq.width * 0.02,
                      height: constraints.maxHeight > 600
                          ? mq.width * 0.1
                          : mq.width * 0.01,
                      labelText: '\$236,535',
                      subLabelText: 'Total Revenue',
                    ),
                    CustomTextContainer(
                      containerColor: AppColors.purple,
                      width: constraints.maxWidth > 600
                          ? mq.width * 0.19
                          : mq.width * 0.02,
                      height: constraints.maxHeight > 600
                          ? mq.width * 0.1
                          : mq.width * 0.01,
                      labelText: '4,527',
                      subLabelText: 'Total Properties',
                    ),
                    CustomTextContainer(
                      containerColor: AppColors.lightBlue,
                      width: constraints.maxWidth > 600
                          ? mq.width * 0.19
                          : mq.width * 0.02,
                      height: constraints.maxHeight > 600
                          ? mq.width * 0.1
                          : mq.width * 0.01,
                      labelText: '1,463',
                      subLabelText: 'Total Customers',
                    ),
                    CustomTextContainer(
                      containerColor: AppColors.blueShade,
                      width: constraints.maxWidth > 600
                          ? mq.width * 0.19
                          : mq.width * 0.02,
                      height: constraints.maxHeight > 600
                          ? mq.width * 0.1
                          : mq.width * 0.01,
                      labelText: '535',
                      subLabelText: 'Total Tenant',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: mq.width * 0.02,
                  left: mq.width * 0.019,
                  top: mq.width * 0.015,
                ),
                child: Row(
                  children: [
                    CustomText(
                      label: 'Property List',
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
                    bottom: mq.width * 0.9),
                child: Container(
                  height: mq.height,
                  decoration: ShapeDecoration(
                    color: AppColors.whiteTeal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Table(
                    defaultColumnWidth: const FixedColumnWidth(124),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      // Column Headers
                      TableRow(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                        ),
                        children: [
                          for (var columnName in [
                            'Title',
                            'Address',
                            'Images',
                            'Move in Date',
                            'Rental Period',
                            'Area',
                            'Rental Type',
                            'Amount',
                            'Status',
                          ])
                            Container(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                bottom: 15,
                              ),
                              child: CustomText(
                                label: columnName,
                                size: FontSize.small,
                                weight: FontWeight.w600,
                                color: AppColors.black,
                              ),
                            ),
                        ],
                      ),
                      // Divider Rows and Data Rows
                      for (int row = 0; row < 6; row++) ...[
                        TableRow(children: [
                          for (int i = 0; i <= 8; i++)
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
                              'Jonas House Stock \nPark Road',
                              '18 Serangoon Garden Way, Thailand, 54000',
                              'Image',
                              'Dec 18, 2024',
                              '12 months',
                              '3000 sqft',
                              'Room',
                              '\$300/mo',
                              'Approved'
                            ])
                              Container(
                                padding: const EdgeInsets.only(
                                  top: 15,
                                  bottom: 15,
                                  left: 15,
                                  right: 15,
                                ),
                                child: data.contains('Approved')
                                    ? Container(
                                        width: 50,
                                        height: 30,
                                        decoration: ShapeDecoration(
                                          color: Colors.green,
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
                                    : data.contains('Image')
                                        ? SizedBox(
                                            width: 116,
                                            height: 36,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: 36,
                                                  height: 36,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        AppImages.propertyImage,
                                                      ),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 20,
                                                  child: Container(
                                                    width: 36,
                                                    height: 36,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          AppImages
                                                              .propertyImage,
                                                        ),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 40,
                                                  child: Container(
                                                    width: 36,
                                                    height: 36,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color:
                                                          AppColors.turquoise,
                                                    ),
                                                    child: const Center(
                                                      child: CustomText(
                                                        label: '+3',
                                                        color: Colors.white,
                                                        size: FontSize.xxMedium,
                                                        weight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
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
                      ],
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
