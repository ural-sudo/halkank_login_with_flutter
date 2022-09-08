import 'package:flutter/material.dart';
import 'package:halkbank_giris/Cubits/close_fab_cubit.dart';
import 'package:halkbank_giris/views/login_page.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CloseFabCubit())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home:LoginPage(),
      ),
    );
  }
}
