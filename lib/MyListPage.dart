import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; 
import 'All_Lists.dart';

class MyListPage extends StatefulWidget {
  const MyListPage({super.key});
  static String pageName = '/myListPage';
  @override
  State<MyListPage> createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: width * 0.1,
                    child: Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'My List',
                    style: GoogleFonts.kanit(
                      fontSize: 19,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.14,
                  ),
                ],
              ),
            ),
          ),
          movieListForMyList.isEmpty
              ? const Center(
                  child: Text(
                  'No items in List',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ))
              : listView(height, width),
          const SizedBox(),
        ],
      ),
    );
  }

  Widget listView(double height, double width) {
    return SizedBox(
      height: height * 0.82,
      child: ListView.builder(
        itemCount: movieListForMyList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: height * 0.13,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: width * 0.17,
                      child: Image.asset(movieListForMyList[index].image,
                          alignment: Alignment.centerRight),
                    ),
                    SizedBox(
                      width: width * 0.68,
                      child: Text(
                        movieListForMyList[index].title,
                        textAlign: TextAlign.left,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.08,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              movieListForMyList.removeAt(index);
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Successfully removed'),
                                duration: Duration(milliseconds: 500),
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.delete,
                            textDirection: TextDirection.ltr,
                            color: Color.fromARGB(255, 175, 172, 172),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          );
        },
      ),
    );
  }
}
//