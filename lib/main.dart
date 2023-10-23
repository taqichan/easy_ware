import 'package:flutter/material.dart';
import 'package:easy_ware/src/app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_ware/src/features/authentication/presentation/bloc/auth_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
      ],
      child: AppScreen(),
    );
  }
}
