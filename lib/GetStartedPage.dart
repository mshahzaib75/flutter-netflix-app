import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/PrivacyPolicyPage.dart';
import 'package:netflix_app/SignUpPage.dart';

import 'SignInPage.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});
  static String pageName = '/getStartedPage';
  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 15,
        shadowColor: const Color.fromARGB(255, 117, 10, 3),
        leading: Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 4),
          child: Image.asset('assets/images/Logo.png'),
        ),
        actions: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(PrivacyPolicyPage.pageName);
              },
              child: Text(
                'Privacy',
                style: GoogleFonts.kanit(fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(SignInPage.pageName);
              },
              child: Text(
                'Sign in',
                style: GoogleFonts.kanit(fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          PopupMenuButton(
            color: Colors.white,
            position: PopupMenuPosition.under,
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                  onTap: () => popUpMenuToast('Setting Pressed Succussfully'),
                  value: 0,
                  child: const Text('Setting')),
              PopupMenuItem<int>(
                  onTap: () => popUpMenuToast('About Pressed Succussfully'),
                  value: 1,
                  child: const Text('About')),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: height * 0.8,
          width: width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                ' Unlimited movies, TV shows & more ',
                style: GoogleFonts.domine(fontSize: 45, color: Colors.white),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SignUpPage.pageName);
                },
                child: Container(
                  height: height * 0.1,
                  width: width,
                  color: const Color.fromARGB(255, 179, 15, 4),
                  child: Center(
                    child: Text(
                      'GET STARTED',
                      style: GoogleFonts.mavenPro(
                          fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  popUpMenuToast(String menuText) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(menuText)));
  }
}
