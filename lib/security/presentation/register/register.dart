import 'package:flutter/material.dart';
import 'package:recruitech_flutter/shared/styles/text_style.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();

  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.all(24.0),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/register_welcome.png',
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
                            "Sign Up",
                            style: CustomTextStyle.titleLarge,
                          ),
                          const Text(
                            "Create una cuenta manito, me lo agradeceras :)",
                            style: CustomTextStyle.bodyMedium,
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          TextField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "First name",
                              hintStyle: CustomTextStyle.inputPlaceholder,
                              prefixIcon: Icon(Icons.person),
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
                            controller: emailController,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Last name",
                              hintStyle: CustomTextStyle.inputPlaceholder,
                              prefixIcon: Icon(Icons.person),
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
                                "Sign up",
                                style: CustomTextStyle.buttonText,
                              ),
                            ),
                          )
                        ],
                      ),
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
