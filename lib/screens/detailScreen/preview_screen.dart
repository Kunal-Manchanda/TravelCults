import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travel_cults/components/homeComponents/slider_item.dart';

import 'details_screen.dart';

class PreviewScreen extends StatefulWidget {
  final title, image, description;

  const PreviewScreen({Key key, this.title, this.image, this.description}) : super(key: key);
  @override
  _PreviewScreenState createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  int currentIndex = 0;

  var sliderData = [
    SliderItem(
        image:
            "https://www.holidify.com/images/cmsuploads/compressed/shutterstock_1073481062_20190822145857.jpg",
        title: "Basilica of Bom Jesus"),
    SliderItem(
        image:
            "https://www.holidify.com/images/cmsuploads/compressed/shutterstock_1314723038_20190822145625.jpg",
        title: "Calangute Beach"),
    SliderItem(
        image:
            "https://www.holidify.com/images/cmsuploads/compressed/shutterstock_1065727913_20190822150731.jpg",
        title: "Fort Aguada"),
  ];

  onPageChanged(index, carouselPageChangedReason) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(sliderData[currentIndex].image),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white,
              BlendMode.overlay,
            ),
            alignment: Alignment.center,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0.8, sigmaY: 0.8),
          child: Container(
            color: Colors.black.withOpacity(0.7),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 50, left: 20),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.6,
                      enlargeCenterPage: true,
                      onPageChanged: onPageChanged,
                    ),
                    items: sliderData,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 300),
                              child: DetailsScreen(
                                image: widget.image,
                                title: widget.title,
                                description: widget.description,
                              )),
                        );
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text("Explore Now",
                              style: GoogleFonts.nunito(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
