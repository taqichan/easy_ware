import 'package:easy_ware/src/common_widgets/banner_explore.dart';
import 'package:easy_ware/src/common_widgets/main_card_widget.dart';
import 'package:easy_ware/src/features/authentication/data/data_user_account.dart';
import 'package:easy_ware/src/features/authentication/domain/user_account.dart';
import 'package:easy_ware/src/thme_manager/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:easy_ware/src/common_widgets/explore_people_app_bar.dart';
import 'package:easy_ware/src/thme_manager/values_manager.dart';

class ExplorePeopleScreen extends StatefulWidget {
  static const String routeName = '/explore-people';
  const ExplorePeopleScreen({super.key});

  @override
  State<ExplorePeopleScreen> createState() => _ExplorePeopleScreenState();
}

class _ExplorePeopleScreenState extends State<ExplorePeopleScreen> {
  UserAccount? account;

  getDataUserAccount() async {
    final data = await UserDataRegister.getUserAccountFromStorage();
    final result = UserAccount.fromMap(data);
    account = result;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getDataUserAccount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p24),
        child: Column(
          children: [
            SizedBox(
              height: AppSize.s50,
            ),
            ExplorePeopleAppBar(
              imagePath: account?.imageProfile,
            ),
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BannerExplore(),
                const SizedBox(height: 30),
                Text('Monitor', style: getWhiteTextStyle(fontSize: 20)),
                const SizedBox(height: 15),
                const MainCard(),
                const SizedBox(height: 15),
                Text('Keyboard', style: getWhiteTextStyle(fontSize: 20)),
                const SizedBox(height: 15),
                const MainCard(),
                const SizedBox(height: 15),
              ],
            )
          ],
        ),
      ),
    );
  }
}
