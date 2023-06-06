import 'package:flutter/material.dart';
import 'package:recruitech_flutter/security/presentation/register/register.dart';
import 'package:recruitech_flutter/shared/styles/text_style.dart';
import 'package:page_transition/page_transition.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/login_welcome.png',
                    height: 255.0,
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      textDirection: TextDirection.ltr,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Welcome Back",
                          style: CustomTextStyle.titleLarge,
                        ),
                        const Text(
                          "Recommended jobs were found for you according to your skills",
                          style: CustomTextStyle.bodyMedium,
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        TextField(
                          controller: emailController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: CustomTextStyle.inputPlaceholder,
                            prefixIcon: Icon(Icons.email),
                            filled: true,
                            fillColor: Color(0xFFF8FAFB),
                            prefixIconColor: Color(0xFF8D8D8D),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 16.0),
                          ),
                          cursorColor: Colors.indigo,
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        TextField(
                          controller: passwordController,
                          obscureText: _hidePassword,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: CustomTextStyle.inputPlaceholder,
                            filled: true,
                            fillColor: Color(0xFFF8FAFB),
                            prefixIcon: Icon(Icons.lock),
                            prefixIconColor: Color(0xFF8D8D8D),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _hidePassword = !_hidePassword;
                                });
                              },
                              child: Icon(
                                _hidePassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            suffixIconColor: Color(0xFF8D8D8D),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 16.0),
                          ),
                          cursorColor: Colors.indigo,
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF2F4897),
                              padding:
                                  const EdgeInsets.symmetric(vertical: 18.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: const Text(
                              "Sign in",
                              style: CustomTextStyle.buttonText,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF8D8D8D),
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageTransition(
                          type: PageTransitionType.size,
                          alignment: Alignment.bottomCenter,
                          child: const Register(),
                        ),
                      );
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF2F4897),
                        fontSize: 16.0,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
