import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travel_cults/screens/detailScreen/filter_screen.dart';

class PackageAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  PackageAppBar({
    Key key,
    @required this.title,
  })  : preferredSize = Size.fromHeight(110.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        AppBar(
          elevation: 0,
          title: Text(
            title,
            style: GoogleFonts.roboto(
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
          backgroundColor: Colors.white,
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                offset: Offset(0, 5),
                blurRadius: 3,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: size.width * 0.5,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          FontAwesomeIcons.sortAmountDown,
                          color: Colors.teal,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sort By",
                            style: GoogleFonts.roboto(fontSize: 16),
                          ),
                          Text(
                            "Popularity",
                            style: GoogleFonts.roboto(
                              color: Colors.red,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  PageTransition(
                    child: FilterPage(),
                    type: PageTransitionType.fade,
                  ),
                ),
                child: Container(
                  width: size.width * 0.5,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          FontAwesomeIcons.filter,
                          color: Colors.teal,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Filters",
                            style: GoogleFonts.roboto(fontSize: 16),
                          ),
                          Text(
                            "0 selected",
                            style: GoogleFonts.roboto(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
