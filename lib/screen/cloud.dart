import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sochem/utils/constants.dart';
import 'package:sochem/widgets/cloud_carousel.dart';

class CloudPage extends StatelessWidget {
  const CloudPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: <Widget>[
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                  color: kPrimaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ), //Offset
                      blurRadius: 30.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                padding: EdgeInsets.only(top: 30.0),
                height: screensize.height * 0.35,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: null,
                          icon: ImageIcon(
                            AssetImage(Back),
                            size: 50.0,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              "Cloud",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  // letterSpacing: 1.2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        RotatedBox(
                          quarterTurns: 2,
                          child: IconButton(
                            onPressed: null,
                            icon: ImageIcon(
                              AssetImage(Back),
                              size: 50.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: CloudCarousel(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            height: screensize.height * 0.635,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                GenreTitle(
                  title: 'Books/Novels',
                ),
                BooksHorizontal(),
                GenreTitle(
                  title: 'Code',
                ),
                BooksHorizontal(),
                GenreTitle(
                  title: 'Core',
                ),
                BooksHorizontal(),
                GenreTitle(
                  title: 'GATE',
                ),
                BooksHorizontal(),
                GenreTitle(
                  title: 'GRE',
                ),
                BooksHorizontal(),
                GenreTitle(
                  title: 'HULM',
                ),
                BooksHorizontal(),
                GenreTitle(
                  title: 'Online Courses',
                ),
                BooksHorizontal(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BooksHorizontal extends StatelessWidget {
  const BooksHorizontal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Container(
        height: 200.0,
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                margin: EdgeInsets.only(
                  left: 10,
                  top: 5,
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      spreadRadius: 0.0,
                      offset: Offset(0.5, 0.5),
                    ),
                  ],
                ),
                width: screensize.width * 0.36,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                margin: EdgeInsets.only(
                  left: 10,
                  top: 5,
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.blueAccent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      spreadRadius: 0.0,
                      offset: Offset(0.5, 0.5),
                    ),
                  ],
                ),
                width: screensize.width * 0.36,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                margin: EdgeInsets.only(
                  left: 10,
                  top: 5,
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.green,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      spreadRadius: 0.0,
                      offset: Offset(0.5, 0.5),
                    ),
                  ],
                ),
                width: screensize.width * 0.36,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                margin: EdgeInsets.only(
                  left: 10,
                  top: 5,
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.orange,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      spreadRadius: 0.0,
                      offset: Offset(0.5, 0.5),
                    ),
                  ],
                ),
                width: screensize.width * 0.36,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                margin: EdgeInsets.only(
                  left: 10,
                  top: 5,
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.purple,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      spreadRadius: 0.0,
                      offset: Offset(0.5, 0.5),
                    ),
                  ],
                ),
                width: screensize.width * 0.36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GenreTitle extends StatelessWidget {
  const GenreTitle({required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Text(
          '$title',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
