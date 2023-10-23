import 'package:easy_ware/src/features/authentication/data/data_user_account.dart';
import 'package:flutter/material.dart';
import 'package:easy_ware/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:easy_ware/src/features/authentication/presentation/sign_up_upload_photo.dart';
import 'package:easy_ware/src/features/likes_you/presentation/explore_people_screen.dart';
import 'package:easy_ware/src/features/likes_you/presentation/people_detail_screen.dart';
import 'package:easy_ware/src/features/likes_you/presentation/people_loved_screen.dart';
import 'package:easy_ware/src/thme_manager/theme_data_manager.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({
    super.key,
  });

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  bool isRegister = false;

  isUserRegister() async {
    isRegister = await UserDataRegister.getUserAccountRegister();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jodoin Appss',
      theme: getAppThemeData(),
      home: isRegister ? const ExplorePeopleScreen() : const SignUpScreen(),
      routes: {
        SignUpScreen.routeName: (_) => const SignUpScreen(),
        SignUpUploadPhoto.routeName: (_) => SignUpUploadPhoto(),
        ExplorePeopleScreen.routeName: (_) => const ExplorePeopleScreen(),
        PeopleLovedScreen.routeName: (_) => const PeopleLovedScreen(),
        PeopleDetailScreen.routeName: (_) => const PeopleDetailScreen(),
      },
    );
  }
}
