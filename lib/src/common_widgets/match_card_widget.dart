import 'package:flutter/material.dart';
import 'package:easy_ware/src/thme_manager/asset_image_icon_manager.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:easy_ware/src/thme_manager/style_manager.dart';

class MatchCardWidget extends StatelessWidget {
  const MatchCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            image: const DecorationImage(
              image:
                  AssetImage('${AssetImageIconManager.assetPath}/person_1.png'),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Color(0xff262F4b),
              width: 8,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 40),
          height: 70,
          width: double.infinity,
          child: BlurryContainer(
            blur: 3,
            elevation: 0.5,
            padding: EdgeInsets.zero,
            borderRadius: BorderRadius.circular(70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image.asset(
                '${AssetImageIconManager.assetPath}/blurr.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 55, left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Sayna Atiya',
                    style: getWhiteTextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '20, Traveler',
                    style: getWhiteTextStyle(),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 365, left: 80),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(
                      '${AssetImageIconManager.assetPath}/kontak.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
