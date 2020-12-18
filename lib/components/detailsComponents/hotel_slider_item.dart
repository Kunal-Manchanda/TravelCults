import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelSliderItem extends StatelessWidget {
  final image;
  final title;
  final rating;
  final description;
  HotelSliderItem(
      {Key key, this.image, this.title, this.rating, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        // PageTransition(
        //     type: PageTransitionType.fade,
        //     duration: Duration(milliseconds: 300),
        //     child: DetailsScreen(
        //       image: image,
        //       title: title,
        //       description: description,
        //     )),
        // );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          color: Colors.red,
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.7),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12))),
                child: Padding(
                padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: GoogleFonts.nunito(
                                fontSize: 25.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            rating,
                            style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
