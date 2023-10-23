import 'package:flutter/material.dart';
import 'package:easy_ware/src/thme_manager/style_manager.dart';

class CustomPeopleLovedCardWidget extends StatelessWidget {
  const CustomPeopleLovedCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/people_detail_screen');
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff262F4b),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: const AssetImage('assets/images/person_1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              'Aulia Zahra',
              style:
                  getWhiteTextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              '25, doctor',
              style: getBlack60TextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
