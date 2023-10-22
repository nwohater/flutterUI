import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 25),
                // change icon color

                const Icon(
                  // set icon color
                  Icons.apple_rounded,
                  color: Colors.grey,
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
                    style: const TextStyle(color: Colors.black),
                    // make enter key run a function
                    onSubmitted: (String value) async {
                      // ignore: avoid_print
                      print(value);
                    },

                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'User ID',
                      prefixIcon: const Icon(Icons.person, color: Colors.white,),
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
                    cursorColor: Colors.white,
                    // change color of text
                    style: const TextStyle(color: Colors.black),
                    // make enter key run a function
                    onSubmitted: (String value) async {
                      // ignore: avoid_print
                      print(value);
                    },
                    //display icon inside textfield

                    obscureText: true,
                    decoration: InputDecoration(
                      // add text to border when focused
                      hintText: 'Password',
                      prefixIcon: const Icon(Icons.password, color: Colors.white,),
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
