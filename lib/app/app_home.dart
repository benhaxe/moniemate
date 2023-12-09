import 'package:flutter/material.dart';
import 'package:moniemate/app/Calculate/calculate.dart';
import 'package:moniemate/app/home/presentation/home.dart';
import 'package:moniemate/app/profile/profile.dart';
import 'package:moniemate/app/shipment/shipment.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/colors/colors.dart';

class AppHome extends StatefulWidget {
  static const route = '/dashboard';
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int currentIndex = 0;
  List<Widget> children = [
    const Home(),
    const Calculate(),
    const Shipment(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children.elementAt(currentIndex),
      bottomNavigationBar: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (value) => setState(() {
                currentIndex = value;
              }),
              selectedItemColor: Theme.of(context).colorScheme.primary,
              unselectedItemColor:
                  Theme.of(context).colorScheme.onBackground.withOpacity(.6),
              showUnselectedLabels: true,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calculate_outlined),
                  label: "Calculate",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.history_outlined),
                  label: "Shipment",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: "Profile",
                ),
              ],
            ),
            AnimatedPositioned(
              top: 0,
              left: constraints.maxWidth /
                      children.length *
                      (currentIndex) + //(Total Tab=4) space of current index
                  (constraints.maxWidth /
                      (children.length *
                          2)) - // (Total Tab *2=8)minimize the half of it
                  50,
              duration: const Duration(
                milliseconds: 100,
              ), // minimize the width of dash
              child: Container(
                width: context.width / 4,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.primaryPurple,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
