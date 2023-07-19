import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/All_Lists.dart';
import 'package:netflix_app/SignInPage.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  static String pageName = '/settings';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: height * 0.08,
            width: width,
            decoration: const BoxDecoration(
              color: Colors.black,
              boxShadow: [
                BoxShadow(
                  offset: Offset(1, 1),
                  color: Color.fromARGB(255, 36, 35, 35),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Setting',
                style: GoogleFonts.kanit(
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.15,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/userImg.png'),
                  ),
                  SizedBox(
                    width: width * 0.06,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'rajput786@gmail.com',
                        style: TextStyle(
                          color: Color.fromARGB(255, 82, 81, 81),
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '03786786786',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 82, 81, 81),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            indent: 0,
            endIndent: 0,
            color: Color.fromARGB(255, 82, 81, 81),
          ),
          SizedBox(
            height: height * 0.6,
            width: width,
            child: ListView.builder(
              itemCount: settingList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Text(
                        settingList[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        if (index == 0 && index == 1 && index == 2) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(settingList[index]),
                            ),
                          );
                        } else if (index == 3) {
                          Navigator.pushReplacementNamed(
                              context, SignInPage.pageName);
                        }
                      },
                    ),
                    const Divider(
                      indent: 0,
                      endIndent: 150,
                      color: Color.fromARGB(255, 82, 81, 81),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
