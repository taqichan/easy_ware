import 'dart:io';

import 'package:flutter/material.dart';
import 'package:easy_ware/src/common_widgets/custom_bottom_widget.dart';
import 'package:easy_ware/src/common_widgets/custom_text_button.dart';
import 'package:easy_ware/src/common_widgets/logo_and_tagline.dart';
import 'package:easy_ware/src/common_widgets/upload_photo_widget.dart';
import 'package:easy_ware/src/features/authentication/domain/user_account.dart';
import 'package:easy_ware/src/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:easy_ware/src/thme_manager/font_manager.dart';
import 'package:easy_ware/src/thme_manager/style_manager.dart';
import 'package:easy_ware/src/thme_manager/values_manager.dart';
import 'package:easy_ware/src/utils/image_picker_util.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpUploadPhoto extends StatefulWidget {
  static const String routeName = '/sign-up-upload-photo';
  SignUpUploadPhoto({super.key});

  @override
  State<SignUpUploadPhoto> createState() => _SignUpUploadPhotoState();
}

class _SignUpUploadPhotoState extends State<SignUpUploadPhoto> {
  File? image;

  void getImageProfile(GetImageFrom source) async {
    final result = await ImagePickerUtil.getImage(source);
    if (result != null) {
      setState(() {
        image = File(result.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    UserAccount userAccount =
        ModalRoute.of(context)?.settings.arguments as UserAccount;
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSucces) {
            Navigator.pushNamed(context, '/explore-people');
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              LogoAndTagline(),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: EdgeInsets.all(24),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {
                                  getImageProfile(GetImageFrom.camera);
                                },
                                icon: Icon(Icons.camera),
                                iconSize: 50,
                              ),
                              IconButton(
                                onPressed: () {
                                  getImageProfile(GetImageFrom.gallery);
                                },
                                icon: Icon(Icons.photo),
                                iconSize: 50,
                              ),
                            ]),
                      );
                    },
                  );
                },
                child: UploadPhotoWidget(
                  image: image,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                '${userAccount.fullName}',
                style: getWhiteTextStyle(
                  fontWeight: FontWeightManager.semiBold,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Class ${userAccount.occupation}',
                style: getBlack30TextStyle(),
              ),
              SizedBox(
                height: 200,
              ),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  if (state is AuthLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return CustomBottomWidget(
                    title: 'Update My Profile',
                    onTap: () {
                      userAccount.imageProfile = image?.path;
                      context.read<AuthBloc>().add(
                            RegisterAuthEvent(
                              userAccount: userAccount,
                              isRegister: true,
                            ),
                          );
                    },
                  );
                },
              ),
              CustomTextButton(
                  title: 'Skip for Now',
                  onTap: () {
                    context.read<AuthBloc>().add(
                          RegisterAuthEvent(
                            userAccount: userAccount,
                            isRegister: true,
                          ),
                        );
                    Navigator.pushNamed(context, '/explore-people');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
