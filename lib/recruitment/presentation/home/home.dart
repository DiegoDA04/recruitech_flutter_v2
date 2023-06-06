import 'package:flutter/material.dart';
import 'package:recruitech_flutter/shared/styles/text_style.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(24.0),
          child: const Column(
            children: [
              Text(
                "Recruitech",
                style: CustomTextStyle.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
