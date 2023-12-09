import 'package:flutter/material.dart';
import 'package:moniemate/app/app_home.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/theme/app_theme.dart';

class MonieMate extends StatelessWidget {
  const MonieMate({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaleAware(
      config: const ScaleConfig(
        width: 375,
        height: 812,
      ),
      child: Builder(builder: (builderContext) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'MonieMate',
          theme: AppTheme(builderContext).lightTheme,
          home: const AppHome(),
        );
      }),
    );
  }
}
