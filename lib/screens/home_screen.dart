import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 25),
                const Icon(
                  Icons.apple_rounded,
                  size: 100,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    // make enter key run a function
                    onSubmitted: (String value) async {
                      // ignore: avoid_print
                      print(value);
                    },
                    //display icon inside textfield

                    obscureText: false,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: TextField(
                    // make enter key run a function
                    onSubmitted: (String value) async {
                      // ignore: avoid_print
                      print(value);
                    },
                    //display icon inside textfield

                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                    ),
                  ),
                ),
                // button for login
                const SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
