import 'package:flutter/material.dart';
import 'package:rent_fix_admin/constants/constants.dart';
import 'package:rent_fix_admin/widgets/widgets.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
                      label: 'Payment Management',
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
                      defaultColumnWidth: const FixedColumnWidth(146),
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
                              'Repayment Duration',
                              'Total Payment',
                              '1% Service Fee',
                              '3% Admin Fee',
                              'Deducted Payment',
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
                        for (int row = 0; row < 8; row++) ...[
                          TableRow(children: [
                            for (int i = 0; i <= 7; i++)
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
                                '12 months',
                                '\$96,000',
                                '\$960',
                                '\$2,880',
                                '\$7,680',
                                'Paid',
                              ])
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 15, left: 15, right: 80),
                                  child: data.contains('Paid')
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
