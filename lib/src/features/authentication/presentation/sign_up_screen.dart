import 'package:easy_ware/src/features/authentication/domain/user_account.dart';
import 'package:easy_ware/src/features/authentication/presentation/sign_up_upload_photo.dart';
import 'package:flutter/material.dart';
import 'package:easy_ware/src/common_widgets/banner.dart';
import 'package:easy_ware/src/common_widgets/custom_bottom_widget.dart';
import 'package:easy_ware/src/common_widgets/custom_text_field.dart';
import 'package:easy_ware/src/thme_manager/values_manager.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/sign-up';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final kelasController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    kelasController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String? validationInput() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      return 'Please fill all the fields';
    }
    if (!emailController.text.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p24),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              const BannerWidget(),
              CustomTextField(
                labelName: 'Complete Name',
                hintText: 'Write your name',
                controller: nameController,
              ),
              CustomTextField(
                labelName: 'Class',
                hintText: 'Write your class',
                controller: kelasController,
              ),
              CustomTextField(
                labelName: 'Email',
                hintText: 'Write your mail address',
                controller: emailController,
              ),
              CustomTextField(
                labelName: 'Password',
                hintText: 'Write your security',
                controller: passwordController,
                obscureText: true,
              ),
              CustomBottomWidget(
                title: 'Get Started',
                onTap: () {
                  final messege = validationInput();
                  if (messege != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(messege),
                      ),
                    );
                    return;
                  }
                  UserAccount userAccount = UserAccount(
                    fullName: nameController.text,
                    email: emailController.text,
                    password: passwordController.text,
                    occupation: kelasController.text,
                    age: '',
                  );
                  Navigator.pushNamed(
                    context,
                    SignUpUploadPhoto.routeName,
                    arguments: userAccount,
                  );
                },
              ),
              SizedBox(
                height: AppSize.s20,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
