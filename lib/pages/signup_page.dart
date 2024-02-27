import 'package:effective_education/components/button.dart';
import 'package:effective_education/components/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    void signUserIn() {}

    void navigateTo(page) {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      );
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  //logo
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.symmetric(vertical: 30),
                        decoration: BoxDecoration(
                          color: Colors.purple,
                        ),
                        child: Center(
                            child: Image.asset(
                          'lib/images/mitadt.png',
                          height: 120,
                        )),
                      ),
                    ],
                  ),
            
                  SizedBox(
                    height: 80,
                  ),
                  //welcome back, you've been missed
                  Text("Hello we're glad to have you here!",
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.black,
                        fontSize: 20,
                      )),
            
                  SizedBox(
                    height: 8,
                  ),
          
            
                  //password
            
                  SizedBox(
                    height: 8,
                  ),
            
                  //username
                  MyTextField(
                    controller: usernameController,
                    hintText: "Email or Phone Number",
                    obscureText: false,
                  ),
            
                  SizedBox(
                    height: 8,
                  ),
                  //password
                  MyTextField(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  //password
                  MyTextField(
                    controller: passwordController,
                    hintText: "Confirm Password",
                    obscureText: true,
                  ),
            
                  SizedBox(
                    height: 8,
                  ),

            
                  SizedBox(
                    height: 20,
                  ),
                  //sign in button
                  MyButton(
                    hintText: "Sign Up",
                    onTap: signUserIn,
                  ),
            
                  SizedBox(
                    height: 20,
                  ),
            
                  //or continue with
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Or continue with ",
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontFamily: 'Calibri',
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
            
                  SizedBox(
                    height: 20,
                  ),
                  //google sign up
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 179, 142, 46),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'lib/images/google-log-in.webp',
                                  height: 48,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "or sign in with Google",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Calibri'),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  //not a member? register now
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(fontFamily: 'Calibri'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: InkWell(
                              onTap: () {
                                navigateTo(SignUpPage());
                              },
                              child: Text(
                                "Sign up now",
                                style: TextStyle(
                                    color: Colors.blue, fontFamily: 'Calibri'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
