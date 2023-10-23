import 'dart:io';

import 'package:flutter/material.dart';
import 'package:easy_ware/src/thme_manager/asset_image_icon_manager.dart';

class UploadPhotoWidget extends StatelessWidget {
  const UploadPhotoWidget({super.key, required this.image});

  final File? image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xff262F4b),
                  width: 8,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: image != null
                    ? Image(
                        image: FileImage(image!),
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        '${AssetImageIconManager.assetPath}/no_pp.png',
                        fit: BoxFit.cover,
                      ),
              )),
        ),
        Positioned(
          bottom: -25,
          child: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(
                '${AssetImageIconManager.assetPath}/add.png',
                fit: BoxFit.cover,
              )),
        )
      ],
    );
  }
}
