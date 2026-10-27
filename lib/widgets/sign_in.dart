import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'reset_password.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //логотип та назва flutter зверху
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FlutterLogo(size: 50),
                    const SizedBox(width: 10),
                    const Text(
                      'Flutter',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                const Text('Email:'),
                const SizedBox(height: 6),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color(0xFFF5F0F5),
                  ),
                ),
                const SizedBox(height: 16),

                const Text('Password:'),
                const SizedBox(height: 6),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color(0xFFF5F0F5),
                  ),
                ),
                const SizedBox(height: 20),

                OutlinedButton(
                  onPressed: () {
                    // перехід на екран реєстрації
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignupScreen()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color: Colors.pinkAccent, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 16),

                // hядок з кнопкою Login та посиланням Reset password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // вікно при натисканні кнопки входу
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Success'),
                            content: const Text('You have successfully logged in!'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('ОК'),
                              ),
                            ],
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
                      ),
                      child: const Text('Login'),
                    ),
                    TextButton(
                      onPressed: () {
                        // перехід на екран відновлення пароля
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ResetPasswordScreen()),
                        );
                      },
                      child: const Text('Reset password'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}