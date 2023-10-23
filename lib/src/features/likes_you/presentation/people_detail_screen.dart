import 'package:flutter/material.dart';
import 'package:easy_ware/src/common_widgets/custom_bottom_widget.dart';
import 'package:easy_ware/src/common_widgets/custom_match_button_widget.dart';
import 'package:easy_ware/src/thme_manager/asset_image_icon_manager.dart';
import 'package:easy_ware/src/thme_manager/style_manager.dart';

class PeopleDetailScreen extends StatelessWidget {
  static const String routeName = '/people_detail_screen';
  const PeopleDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 420,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/person_1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomMatchButtonWidget(
                      assetPath:
                          '${AssetImageIconManager.assetPath}/arrow_left.png',
                      onTap: () {},
                      dimension: 25,
                    ),
                    Text(
                      'Lover People\nDetail',
                      style: getWhiteTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    CustomMatchButtonWidget(
                      assetPath:
                          '${AssetImageIconManager.assetPath}/close_circle.png',
                      onTap: () {},
                      dimension: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 30),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         'Aulia Zahra',
          //         style: getWhiteTextStyle(
          //           fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       SizedBox(height: 5),
          //       Text(
          //         '25, doctor',
          //         style: getBlack60TextStyle(),
          //       ),
          //       SizedBox(height: 15),
          //       Text(
          //         "I love solving problem in terms of finance, business, and any case. With you, we will solve all world problems.",
          //         style: getWhiteTextStyle(),
          //       ),
          //       SizedBox(
          //         height: 15,
          //       ),
          //       Container(
          //         height: 80,
          //         child: ListView.builder(
          //           scrollDirection: Axis.horizontal,
          //           itemBuilder: (context, index) {
          //             return Container(
          //               margin: EdgeInsets.only(right: 10),
          //               height: 80,
          //               width: 120,
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10),
          //                 image: DecorationImage(
          //                   image: AssetImage('assets/images/hobby_1.png'),
          //                   fit: BoxFit.cover,
          //                 ),
          //               ),
          //             );
          //           },
          //           itemCount: 5,
          //         ),
          //       ),
          //       SizedBox(height: 15),
          //       CustomBottomWidget(title: 'Chat Now', onTap: () {})
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
