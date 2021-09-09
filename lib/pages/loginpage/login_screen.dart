import 'package:figma_ui/pages/homepage/home_screen.dart';
import 'package:figma_ui/pages/loginpage/common.dart';
import 'package:figma_ui/pages/registerpage/register_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  FocusNode emailFocus = FocusNode();

  FocusNode passwordFocus = FocusNode();

  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),
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
                        height: 50,
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 21),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Enter your email and passsword",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: Colors.grey[600]),
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
                      InkWell(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            print("Login successfull!");
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Homepage()));
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
                            "LOG IN",
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
                              "Don't have an Account ?  ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Register()));
                              },
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color(0xff465270)),
                              ),
                            ),
                          ],
                        ),
                      ),
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
