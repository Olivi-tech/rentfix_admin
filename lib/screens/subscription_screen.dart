// import 'package:flutter/material.dart';
// import 'package:rent_fix_admin/constants/constants.dart';
// import 'package:rent_fix_admin/widgets/custom_drawer.dart';
// import 'package:rent_fix_admin/widgets/widgets.dart';

// class Subscription extends StatefulWidget {
//   const Subscription({super.key});

//   @override
//   State<Subscription> createState() => _SubscriptionState();
// }

// class _SubscriptionState extends State<Subscription> {
//   TextEditingController recentController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     late Size mq = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: AppColors.whiteTeal,
//       body: LayoutBuilder(
//           builder: (BuildContext context, BoxConstraints constraints) {
//         return Row(
//           children: [
//             Expanded(
//               flex: constraints.maxWidth > 600 ? 0 : 1,
//               child: Container(
//                 height: double.infinity,
//                 color: AppColors.turquoise,
//                 child: const SingleChildScrollView(
//                   child: CustomDrawer(),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: constraints.maxWidth > 600 ? 4 : 2,
//               child: Container(
//                 height: double.infinity,
//                 color: AppColors.whiteTeal,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const CustomSize(
//                         height: 30,
//                       ),
//                       Padding(
//                         padding:
//                             EdgeInsets.only(right: 50, left: mq.width * 0.019),
//                         child: Row(
//                           children: [
//                             CustomText(
//                               label: 'Admin Panel',
//                               color: AppColors.black,
//                               size: constraints.maxWidth > 600
//                                   ? 32
//                                   : FontSize.small,
//                               weight: FontWeight.w700,
//                             ),
//                             const Spacer(),
//                             Container(
//                               width: 53.64,
//                               height: 53.64,
//                               decoration: BoxDecoration(
//                                 color: AppColors.white,
//                                 borderRadius: BorderRadius.circular(10),
//                                 border: Border.all(
//                                   color: AppColors.turquoise,
//                                   width: 1,
//                                 ),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(3),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: const Image(
//                                     image: AssetImage(AppImages.profile),
//                                     fit: BoxFit.fill,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const CustomSize(
//                               width: 10,
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 CustomText(
//                                   label: 'Albert Flores',
//                                   color: AppColors.black,
//                                   size: constraints.maxWidth > 600
//                                       ? 18
//                                       : FontSize.small,
//                                   weight: FontWeight.w700,
//                                 ),
//                                 CustomText(
//                                   label: 'Admin',
//                                   color: AppColors.black,
//                                   size: constraints.maxWidth > 600
//                                       ? 14
//                                       : FontSize.small,
//                                   weight: FontWeight.w400,
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       const CustomSize(
//                         height: 30,
//                       ),
//                       const CustomSize(
//                         height: 10,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                             right: mq.width * 0.02, left: mq.width * 0.019),
//                         child: Row(
//                           children: [
//                             CustomText(
//                               label: 'User’s Subscription Management',
//                               color: AppColors.black,
//                               size: constraints.maxWidth > 600
//                                   ? FontSize.large
//                                   : FontSize.small,
//                               weight: FontWeight.w600,
//                             ),
//                             const Spacer(),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 10),
//                               child: CustomTextField(
//                                   height: 48,
//                                   width: constraints.maxWidth > 600
//                                       ? mq.width * 0.2
//                                       : mq.width * 0.04,
//                                   iconData: Icons.search,
//                                   isBorder: true,
//                                   borderRadius: 22,
//                                   borderColor: Colors.transparent,
//                                   hintText: 'Search here...',
//                                   fillColor: Colors.white),
//                             ),
//                             const CustomSize(
//                               width: 10,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 10),
//                               child: CustomTextField(
//                                 borderRadius: 38,
//                                 width: constraints.maxWidth > 600
//                                     ? mq.width * 0.1
//                                     : mq.width * 0.04,
//                                 height: 40,
//                                 hintColor: AppColors.darkGrey,
//                                 readOnly: true,
//                                 hintText: 'Recent',
//                                 borderColor: AppColors.darkGrey,
//                                 controller: recentController,
//                                 suffixIcon: DropDownWidget(
//                                   itemList: const ['1', '2'],
//                                   controller: recentController,
//                                   onChanged: (String? selectedOption) {
//                                     recentController.text =
//                                         selectedOption ?? '';
//                                   },
//                                 ),
//                                 fillColor: AppColors.white,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                           right: mq.width * 0.02,
//                           left: mq.width * 0.019,
//                           top: mq.width * 0.02,
//                         ),
//                         child: Container(
//                           decoration: ShapeDecoration(
//                             color: AppColors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           child: SingleChildScrollView(
//                             scrollDirection: Axis.horizontal,
//                             child: Table(
//                               defaultColumnWidth: const FixedColumnWidth(156),
//                               defaultVerticalAlignment:
//                                   TableCellVerticalAlignment.middle,
//                               children: [
//                                 // Column Headers
//                                 TableRow(
//                                   decoration: BoxDecoration(
//                                     color: Colors.white.withOpacity(0.8),
//                                   ),
//                                   children: [
//                                     for (var columnName in [
//                                       '#',
//                                       'Invoice ID',
//                                       'Name',
//                                       'Subscription Plan',
//                                       'Type',
//                                       'Price',
//                                       'Status',
//                                     ])
//                                       Container(
//                                         padding: const EdgeInsets.only(
//                                             top: 15,
//                                             left: 15,
//                                             bottom: 15,
//                                             right: 15),
//                                         child: Text(
//                                           columnName,
//                                           style: const TextStyle(
//                                             fontSize: 13,
//                                             fontWeight: FontWeight.w600,
//                                             color: AppColors.black,
//                                           ),
//                                         ),
//                                       ),
//                                   ],
//                                 ),
//                                 // Data Rows
//                                 for (int row = 0; row < 9; row++)
//                                   TableRow(
//                                     decoration: BoxDecoration(
//                                       color: row % 2 == 0
//                                           ? const Color(0xFFEDF5F5)
//                                           : Colors.white,
//                                     ),
//                                     children: [
//                                       for (var data in [
//                                         '1',
//                                         'IN-2023-35458',
//                                         'Esther Howard',
//                                         'Premium',
//                                         'Yearly',
//                                         '\$180/yearly',
//                                         'Pending'
//                                       ])
//                                         Container(
//                                           padding: const EdgeInsets.only(
//                                               top: 15,
//                                               bottom: 15,
//                                               left: 15,
//                                               right: 40),
//                                           child: data.contains('Pending')
//                                               ? Container(
//                                                   width: 50,
//                                                   height: 30,
//                                                   decoration: ShapeDecoration(
//                                                     color: Colors.green,
//                                                     shape:
//                                                         RoundedRectangleBorder(
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               24),
//                                                     ),
//                                                   ),
//                                                   child: Center(
//                                                     child: CustomText(
//                                                       label: data,
//                                                       color: Colors.white,
//                                                       size: FontSize.small,
//                                                       weight: FontWeight.w400,
//                                                     ),
//                                                   ),
//                                                 )
//                                               : CustomText(
//                                                   label: data,
//                                                   color:
//                                                       const Color(0xFF6B779A),
//                                                   size: FontSize.small,
//                                                   weight: FontWeight.w400,
//                                                 ),
//                                         ),
//                                     ],
//                                   ),
//                                 // Divider Rows
//                                 // TableRow(children: [
//                                 //   for (int i = 0;
//                                 //       i <= 6;
//                                 //       i++) // Adjust to 8 to match the header columns
//                                 //     const Divider(
//                                 //       height: 1,
//                                 //       thickness: 1,
//                                 //       color: AppColors.blueTeal,
//                                 //     ),
//                                 // ]),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         );
//       }),
//     );
//   }
// }
