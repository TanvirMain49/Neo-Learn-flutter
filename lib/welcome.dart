import 'package:first_project/auth/auth_gate.dart';
import 'package:first_project/signIn.dart';
import 'package:first_project/signup.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              "images/well.jpg",
              fit: BoxFit.cover,
            ),
          ),

          // Main Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 2),

                // App Logo
                CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.white.withOpacity(0.2),
                  child: Icon(
                    Icons.school_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                ),

                const SizedBox(height: 20),

                // Title
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),

                const SizedBox(height: 8),

                // Subtitle
                Text(
                  "Your learning journey continues",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    letterSpacing: 1.2,
                  ),
                ),

                const Spacer(flex: 3),

                // Buttons Row
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    // Sign In Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => const AuthGate()),
                              (route) => false,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(230, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 6,
                      ),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    // Sign Up Button
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignupPage()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.white70),
                        minimumSize: const Size(230, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Google Login Button
                // OutlinedButton.icon(
                //   onPressed: () {},
                //   icon: Icon(Icons.g_mobiledata, size: 34, color: Colors.white),
                //   label: Text(
                //     "Continue with Google",
                //     style: TextStyle(color: Colors.white),
                //   ),
                //   style: OutlinedButton.styleFrom(
                //     side: BorderSide(color: Colors.white70),
                //     minimumSize: const Size(230, 50),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(15),
                //     ),
                //   ),
                // ),

                const SizedBox(height: 20),

                const Spacer(flex: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
