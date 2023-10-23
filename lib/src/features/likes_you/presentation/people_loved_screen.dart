import 'package:flutter/material.dart';
import 'package:easy_ware/src/common_widgets/custom_people_loved_card.dart';

class PeopleLovedScreen extends StatelessWidget {
  static const String routeName = '/people_loved_screen';
  const PeopleLovedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'People You\nLoved',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return CustomPeopleLovedCardWidget();
                },
                itemCount: 2),
          ),
        ],
      ),
    );
  }
}
