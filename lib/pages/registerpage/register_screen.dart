import 'package:figma_ui/pages/loginpage/common.dart';
import 'package:figma_ui/pages/loginpage/login_screen.dart';
import 'package:figma_ui/pages/registerpage/register_screen.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  FocusNode nameFocus = FocusNode();

  FocusNode emailFocus = FocusNode();

  FocusNode passwordFocus = FocusNode();

  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Container(
                          child: Image.asset("asset/images/logo.png",
                              width: 100, height: 100),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Enter your credentials to continue",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: Colors.grey[600]),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Username",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.grey[600]),
                      ),
                      commonTextFormField(
                        hintText: "User Name",
                        hintStyle:
                            appTextStyle(textColor: Colors.grey, fontSize: 15),
                        controller: nameController,
                        focusNode: nameFocus,
                        validation: (value) {
                          return nameValidation(value);
                        },
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Email",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.grey[600]),
                      ),
                      commonTextFormField(
                        hintText: "Email Address",
                        hintStyle:
                            appTextStyle(textColor: Colors.grey, fontSize: 15),
                        controller: emailController,
                        suffixIcon: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        focusNode: emailFocus,
                        validation: (value) {
                          return emailValidation(value);
                        },
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Password",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.grey[600]),
                      ),
                      // Text(
                      //   "Password",
                      //   style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                      // ),
                      commonTextFormField(
                        hintText: "Password",
                        hintStyle:
                            appTextStyle(textColor: Colors.grey, fontSize: 15),
                        controller: passwordController,
                        obscureText: showPassword,
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          child: Icon(showPassword
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        focusNode: passwordFocus,
                        validation: (value) {
                          return passwordValidation(value);
                        },
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot Password ? ",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "By continuing you agree to our Terms of Service and Privacy policy.",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      SizedBox(height: 12),
                      InkWell(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            print("Register successfull!");
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 14,
                          decoration: BoxDecoration(
                            color: Color(0xff465270),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Already have an account? ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Login()));
                              },
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color(0xff465270)),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
