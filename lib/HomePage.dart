import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/All_Lists.dart';
import 'package:netflix_app/MyListPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String pageName = '/homePage';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counterSlider = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double gridViewHeight = height * 0.17;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        slivers: [
          SliverToBoxAdapter(
              child: SizedBox(
            height: height * 0.6,
            width: width,
            child: Stack(
              children: [
                Image.asset(
                  horrorMovieList[0].image,
                  fit: BoxFit.fill,
                  height: height,
                  width: width,
                ),
                SizedBox(
                  height: height * 0.07,
                  width: width,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 12),
                        child: Image.asset('assets/images/Logo.png'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 46),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'TV Show',
                          style: GoogleFonts.kanit(color: Colors.white),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Movies',
                          style: GoogleFonts.kanit(color: Colors.white),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, MyListPage.pageName);
                        },
                        child: Text(
                          'My List',
                          style: GoogleFonts.kanit(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
// Recommended Movies
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: [
                    Container(
                        width: width,
                        height: height * 0.07,
                        color: const Color.fromARGB(255, 12, 12, 12),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Recommended Movies',
                            style: GoogleFonts.kanit(
                                fontSize: 15, color: Colors.white),
                          ),
                        )),
                    SizedBox(
                      height: height * 0.02,
                    ),

                    SizedBox(
                      height: gridViewHeight,
                      child: GridView.builder(
                        physics: const ScrollPhysics(
                            parent: ClampingScrollPhysics()),
                        scrollDirection: Axis.horizontal,
                        cacheExtent: 40,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1),
                        itemCount: recomendedMovieList.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: () => bottomSheetDialog(
                                  index: index, movieList: recomendedMovieList),
                              child: Image.asset(
                                recomendedMovieList[index].image,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

//  Horror Movies

                    SizedBox(
                      height: height * 0.02,
                    ),

                    Container(
                        width: width,
                        height: height * 0.07,
                        color: const Color.fromARGB(255, 12, 12, 12),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Horror Movies',
                            style: GoogleFonts.kanit(
                                fontSize: 15, color: Colors.white),
                          ),
                        )),
                    SizedBox(
                      height: height * 0.02,
                    ),

                    SizedBox(
                      height: gridViewHeight,
                      child: GridView.builder(
                        physics: const ScrollPhysics(
                            parent: ClampingScrollPhysics()),
                        scrollDirection: Axis.horizontal,
                        cacheExtent: 40,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1),
                        itemCount: horrorMovieList.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: () => bottomSheetDialog(
                                  index: index, movieList: horrorMovieList),
                              child: Image.asset(
                                horrorMovieList[index].image,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

// Fighting Movies

                    SizedBox(
                      height: height * 0.02,
                    ),

                    Container(
                        width: width,
                        height: height * 0.07,
                        color: const Color.fromARGB(255, 12, 12, 12),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Fighting Movies',
                            style: GoogleFonts.kanit(
                                fontSize: 15, color: Colors.white),
                          ),
                        )),
                    SizedBox(
                      height: height * 0.02,
                    ),

                    SizedBox(
                      height: gridViewHeight,
                      child: GridView.builder(
                        physics: const ScrollPhysics(
                            parent: ClampingScrollPhysics()),
                        scrollDirection: Axis.horizontal,
                        cacheExtent: 40,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1),
                        itemCount: fightingMovieList.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: () => bottomSheetDialog(
                                  index: index, movieList: fightingMovieList),
                              child: Image.asset(
                                fightingMovieList[index].image,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

// Comedy Movies

                    SizedBox(
                      height: height * 0.02,
                    ),

                    Container(
                        width: width,
                        height: height * 0.07,
                        color: const Color.fromARGB(255, 12, 12, 12),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Comedy Movies',
                            style: GoogleFonts.kanit(
                                fontSize: 15, color: Colors.white),
                          ),
                        )),
                    SizedBox(
                      height: height * 0.02,
                    ),

                    SizedBox(
                      height: gridViewHeight,
                      child: GridView.builder(
                        physics: const ScrollPhysics(
                            parent: ClampingScrollPhysics()),
                        scrollDirection: Axis.horizontal,
                        cacheExtent: 40,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1),
                        itemCount: comedyMovieList.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: () => bottomSheetDialog(
                                  index: index, movieList: comedyMovieList),
                              child: Image.asset(
                                comedyMovieList[index].image,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

//     Animated Movies

                    SizedBox(
                      height: height * 0.02,
                    ),

                    Container(
                        width: width,
                        height: height * 0.07,
                        color: const Color.fromARGB(255, 12, 12, 12),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Animated Movies',
                            style: GoogleFonts.kanit(
                                fontSize: 15, color: Colors.white),
                          ),
                        )),
                    SizedBox(
                      height: height * 0.02,
                    ),

                    SizedBox(
                      height: gridViewHeight,
                      child: GridView.builder(
                        physics: const ScrollPhysics(
                            parent: ClampingScrollPhysics()),
                        scrollDirection: Axis.horizontal,
                        cacheExtent: 40,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1),
                        itemCount: animatedMovieList.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: () => bottomSheetDialog(
                                  index: index, movieList: animatedMovieList),
                              child: Image.asset(
                                animatedMovieList[index].image,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  bottomSheetDialog({required int index, required List movieList}) {
    showModalBottomSheet(
      context: context,
      elevation: 0,
      barrierColor: Colors.transparent,
      builder: (context) {
        return Container(
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 6,
                width: 240,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 206, 206, 206),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 100,
                      width: 90,
                      child: Image.asset(
                        movieList[index].image,
                      )),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    movieList[index].title,
                    style: GoogleFonts.kanit(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: const Color.fromARGB(255, 201, 199, 199),
                      mini: true,
                      child: const Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: FloatingActionButton(
                      onPressed: () {
                        movieListForMyList.add(movieList[index]);
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Successfully added '),
                          duration: Duration(milliseconds: 500),
                        ));
                        print(movieListForMyList);
                        Navigator.pop(context);
                      },
                      backgroundColor: const Color.fromARGB(255, 61, 61, 61),
                      mini: true,
                      child: const Icon(
                        Icons.list,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: FloatingActionButton(
                      onPressed: () {
                        movieListForDownloads.add(movieList[index]);
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Successfully added '),
                          duration: Duration(milliseconds: 500),
                        ));

                        Navigator.pop(context);
                      },
                      backgroundColor: const Color.fromARGB(255, 61, 61, 61),
                      mini: true,
                      child: const Icon(
                        Icons.download,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
