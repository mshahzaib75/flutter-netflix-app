import 'package:flutter/material.dart'; 

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});
  static String pageName = 'errorPage';
  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 179, 15, 4),
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: Colors.black,
      body: const Center(
        child: Text(
          'Error:404',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
