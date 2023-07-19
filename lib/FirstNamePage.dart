import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/GetStartedPage.dart';

class FirstNamePage extends StatefulWidget {
  const FirstNamePage({super.key});
  static String pageName = '/firstNamePage';
  @override
  State<FirstNamePage> createState() => _FirstNamePageState();
}

class _FirstNamePageState extends State<FirstNamePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> opacityAnimation_N;
  late Animation<double> opacityAnimation_E;
  late Animation<double> opacityAnimation_T;
  late Animation<double> opacityAnimation_F;
  late Animation<double> opacityAnimation_L;
  late Animation<double> opacityAnimation_I;
  late Animation<double> opacityAnimation_X;
  @override
  void initState() {
    super.initState();

    // nextPage();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..addListener(() {
            setState(() {});
          });
    opacityAnimation_N = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: animationController, curve: const Interval(0, 0.2)));
    opacityAnimation_E = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: animationController, curve: const Interval(0.2, 0.4)));
    opacityAnimation_T = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: animationController, curve: const Interval(0.4, 0.6)));
    opacityAnimation_F = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: animationController, curve: const Interval(0.6, 0.7)));
    opacityAnimation_L = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: animationController, curve: const Interval(0.7, 0.8)));
    opacityAnimation_I = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: animationController, curve: const Interval(0.8, 0.9)));
    opacityAnimation_X = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: animationController, curve: const Interval(0.9, 1)));
    nextPage();
    Future.delayed(
      const Duration(seconds: 1),
      () => animationController.forward(),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  nextPage() async {
    await Future.delayed(const Duration(seconds: 4));
    // animationController.forward();
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => const GetStartedPage(),
    ));
  }

  @override
  @override
  Widget build(BuildContext context) {
    double fontSize = 90;
    Color textColor = const Color.fromARGB(255, 165, 13, 2);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: opacityAnimation_N.value,
              child: Text(
                'N',
                style:
                    GoogleFonts.bebasNeue(fontSize: fontSize, color: textColor),
              ),
            ),
            Opacity(
              opacity: opacityAnimation_E.value,
              child: Text(
                'E',
                style:
                    GoogleFonts.bebasNeue(fontSize: fontSize, color: textColor),
              ),
            ),
            Opacity(
              opacity: opacityAnimation_T.value,
              child: Text(
                'T',
                style:
                    GoogleFonts.bebasNeue(fontSize: fontSize, color: textColor),
              ),
            ),
            Opacity(
              opacity: opacityAnimation_F.value,
              child: Text(
                'F',
                style:
                    GoogleFonts.bebasNeue(fontSize: fontSize, color: textColor),
              ),
            ),
            Opacity(
              opacity: opacityAnimation_L.value,
              child: Text(
                'L',
                style:
                    GoogleFonts.bebasNeue(fontSize: fontSize, color: textColor),
              ),
            ),
            Opacity(
              opacity: opacityAnimation_I.value,
              child: Text(
                'I',
                style:
                    GoogleFonts.bebasNeue(fontSize: fontSize, color: textColor),
              ),
            ),
            Opacity(
              opacity: opacityAnimation_X.value,
              child: Text(
                'X',
                style:
                    GoogleFonts.bebasNeue(fontSize: fontSize, color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
