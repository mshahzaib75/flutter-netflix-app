import 'package:flutter/material.dart';
import 'package:netflix_app/HomePage.dart';
import 'Downloads.dart';
import 'Settings.dart';

class TabBarWidgetPage extends StatefulWidget {
  const TabBarWidgetPage({super.key});
  static String pageName = '/tabBarWidgetPage';
  @override
  State<TabBarWidgetPage> createState() => _TabBarWidgetPageState();
}

class _TabBarWidgetPageState extends State<TabBarWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colos.black,
        body: const TabBarView(
          children: [
            HomePage(),
            Downloads(),
            Settings(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: const [
            SizedBox(
              height: 50,
              child: Icon(Icons.home),
            ),
            SizedBox(
              height: 50,
              child: Icon(Icons.cloud_download),
            ),
            SizedBox(
              height: 50,
              child: Icon(Icons.settings),
            ),
          ],
          splashFactory: InkRipple.splashFactory,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(255, 150, 26, 17),
          ),
          indicatorPadding:
              const EdgeInsets.only(left: 25, right: 25, top: 40, bottom: 7),
          unselectedLabelColor: const Color.fromARGB(255, 204, 198, 198),
          labelColor: const Color.fromARGB(255, 150, 26, 17),
        ),
      ),
    );
  }
}
