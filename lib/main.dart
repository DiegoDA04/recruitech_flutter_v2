import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recruitech_flutter/profile/presentation/developer_profile/developer_profile.dart';
import 'package:recruitech_flutter/recruitment/presentation/home/home.dart';
import 'package:recruitech_flutter/security/presentation/login/login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recruitech',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
        ),
        useMaterial3: true,
      ),
      home: Login(),
    );
  }
}
