import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/custom_buttom_home_screen.dart';
import 'package:quiz_app/widgets/gardient_background.dart';
import 'package:quiz_app/widgets/welcome_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GardientBackground(
        child: SafeArea(
          child: Stack(
            children: [
              WelcomeText(),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomButtomHomeScreen(),
              ),
              Center(
                child: Image.asset('assets/images/home_image.png', scale: .8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
