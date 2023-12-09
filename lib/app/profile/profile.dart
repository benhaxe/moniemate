import 'package:flutter/material.dart';
import 'package:moniemate/src/values/assets/images.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        title: const Text('Profile'),
      ),
      body: Container(
        color: const Color(0xFF121116).withOpacity(0.985),
        child: Center(
          child: Image.asset(
            kIMGAbegRunMeUrgentTukay,
            height: 200,
          ),
        ),
      ),
    );
  }
}
