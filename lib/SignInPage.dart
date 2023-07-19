import 'package:form_validator/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/GetStartedPage.dart';
import 'package:netflix_app/SignUpPage.dart';
import 'package:netflix_app/TabBarWidgetPage.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  static String pageName = '/signIn';
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Color emailColor = const Color.fromARGB(255, 56, 55, 55);
  Color passwordColor = const Color.fromARGB(255, 56, 55, 55);
  String password = '*';
  String incorrectLogin = '';
  bool isPasswordVisible = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final emailValidator = ValidationBuilder().email('invalid email').build();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(context, GetStartedPage.pageName);
          },
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'NETFLIX',
          style: GoogleFonts.bebasNeue(
            fontSize: 30,
            color: const Color.fromARGB(255, 165, 13, 2),
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: emailColor,
                    ),
                    height: height * 0.12,
                    width: width * 0.9,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextFormField(
                          controller: emailController,
                          textAlign: TextAlign.left,
                          focusNode: emailFocusNode,
                          style: const TextStyle(
                            height: 1.5,
                            color: Colors.white,
                            fontSize: 17,
                          ),
                          decoration: const InputDecoration(
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            contentPadding:
                                EdgeInsets.only(top: 17, bottom: 17),
                            border: InputBorder.none,
                            label: Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Email',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                          ),
                          validator: emailValidator,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: passwordColor,
                    ),
                    height: height * 0.12,
                    width: width * 0.9,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextFormField(
                          controller: passwordController,
                          textAlign: TextAlign.left,
                          focusNode: passwordFocusNode,
                          style: const TextStyle(
                            height: 1.5,
                            color: Colors.white,
                            fontSize: 17,
                          ),
                          obscureText: isPasswordVisible,
                          onChanged: (value) => password = value,
                          decoration: InputDecoration(
                            suffix: IconButton(
                              onPressed: () => setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              }),
                              icon: isPasswordVisible
                                  ? const Icon(
                                      Icons.visibility_off,
                                    )
                                  : const Icon(
                                      Icons.visibility,
                                    ),
                              iconSize: 30,
                            ),
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            contentPadding:
                                const EdgeInsets.only(top: 17, bottom: 17),
                            border: InputBorder.none,
                            label: const Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Password',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'The field is Required';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.01),
            SizedBox(
              width: width * 0.9,
              child: Text(
                incorrectLogin,
                style: const TextStyle(color: Colors.red, fontSize: 10),
              ),
            ),
            SizedBox(height: height * 0.04),
            InkWell(
              onTap: () {
                formKey.currentState!.validate();
                if (emailController.text == 'rajput786@gmail.com' &&
                    passwordController.text == '12345678') {
                  Navigator.pushNamed(context, TabBarWidgetPage.pageName);
                } else {
                  if (emailController.text == '' &&
                      passwordController.text == '') {
                    setState(() {
                      incorrectLogin = '';
                    });
                  } else {
                    setState(() {
                      incorrectLogin = 'Invalid username or password';
                    });
                  }
                }
              },
              child: Container(
                height: height * 0.09,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: const Color.fromARGB(255, 179, 15, 4),
                ),
                child: Center(
                  child: Text(
                    'Sign In',
                    style:
                        GoogleFonts.mavenPro(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.06),
            const Text(
              'Need help?',
              style: TextStyle(
                color: Color.fromARGB(255, 131, 129, 129),
              ),
            ),
            SizedBox(height: height * 0.06),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'New to Netflix?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 197, 195, 195)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SignUpPage.pageName);
                  },
                  child: const Text(
                    'Sign up now',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 197, 195, 195),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.062),
            SizedBox(
              width: width * 0.9,
              child: const Text(
                "Sign in is protected by Google reCAPTA to ensure you'r not bot.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  color: Color.fromARGB(255, 104, 102, 102),
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.9,
              child: const Text(
                textAlign: TextAlign.center,
                'Learn more.',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 12,
                  color: Color.fromARGB(255, 104, 102, 102),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    emailFocusNode.addListener(() {
      if (emailFocusNode.hasFocus) {
        setState(() {
          emailColor = const Color.fromARGB(255, 80, 79, 79);
        });
      } else {
        setState(() {
          emailColor = const Color.fromARGB(255, 56, 55, 55);
        });
      }
    });
    passwordFocusNode.addListener(() {
      if (passwordFocusNode.hasFocus) {
        setState(() {
          passwordColor = const Color.fromARGB(255, 80, 79, 79);
        });
      } else {
        setState(() {
          passwordColor = const Color.fromARGB(255, 56, 55, 55);
        });
      }
    });
  }
}
