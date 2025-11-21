import 'package:flutter/material.dart';
import 'package:flutter_tutorial/views/pages/login_page.dart';
import 'package:flutter_tutorial/views/pages/onboarding_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/lotties/house.json', height: 400.0),
                FittedBox(
                  child: Text(
                    'Flutter app',
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 50.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return OnboardingPage();
                        },
                      ),
                    );
                  },
                  child: Text('Get Started'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(title: 'Login Page');
                        },
                      ),
                    );
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
