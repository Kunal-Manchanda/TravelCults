import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_cults/components/detailsComponents/hotel_slider_item.dart';
import 'package:travel_cults/components/detailsComponents/stats_indicator.dart';
import 'package:travel_cults/constants.dart';

class DetailsScreen extends StatefulWidget {
  final image;
  final title;
  final description;
  const DetailsScreen({Key key, this.image, this.title, this.description})
      : super(key: key);
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 60,
        color: kPrimaryColor,
        child: InkWell(
          onTap: () => print('tap on close'),
          child: Container(
              child: Center(
                child: Text(
            "Plan My Holiday",
            style: GoogleFonts.nunito(
                color: Colors.white,
                fontSize: 20,
            ),
          ),
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.3,
              width: size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(widget.image),
                fit: BoxFit.fill,
              )),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.title,
                        style: GoogleFonts.nunito(
                            fontSize: size.width * 0.08,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 40, horizontal: 20),
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Description",
                style: GoogleFonts.nunito(
                    fontSize: 25,
                    color: Colors.indigo[900],
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                widget.description,
                style: GoogleFonts.nunito(
                    fontSize: 15,
                    color: Colors.indigo[200],
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Stats",
                style: GoogleFonts.nunito(
                    fontSize: 25,
                    color: Colors.indigo[900],
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                StatsIndicator(
                  rating: 9.6,
                  title: "Wellness",
                ),
                StatsIndicator(
                  rating: 5.0,
                  title: "Adventure",
                ),
                StatsIndicator(
                  rating: 6.0,
                  title: "Medical",
                ),
                StatsIndicator(
                  rating: 7.9,
                  title: "Foodies",
                ),
              ],
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Polpular Hotels",
                style: GoogleFonts.nunito(
                    fontSize: 25,
                    color: Colors.indigo[900],
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
              ),
              items: [
                HotelSliderItem(
                  image:
                      "https://pix10.agoda.net/hotelImages/486/48629/48629_15032518140026462090.jpg?s=1024x768",
                  title: "Hotel Janpath",
                  rating: "4.5",
                  description:
                      "In it except to so temper mutual tastes mother. Interested cultivated its continuing now yet are. Out interested acceptance our partiality affronting unpleasant why add. Esteem garden men yet shy course. Consulted up my tolerably sometimes perpetual oh. Expression acceptance imprudence particular had eat unsatiable",
                ),
                HotelSliderItem(
                  image:
                      "https://pix10.agoda.net/hotelImages/486/48629/48629_15032518140026462090.jpg?s=1024x768",
                  title: "Hotel Blue",
                  rating: "5.0",
                  description:
                      "In it except to so temper mutual tastes mother. Interested cultivated its continuing now yet are. Out interested acceptance our partiality affronting unpleasant why add. Esteem garden men yet shy course. Consulted up my tolerably sometimes perpetual oh. Expression acceptance imprudence particular had eat unsatiable",
                ),
                HotelSliderItem(
                  image:
                      "https://pix10.agoda.net/hotelImages/486/48629/48629_15032518140026462090.jpg?s=1024x768",
                  title: "Hotel Yellow",
                  rating: "4.8",
                  description:
                      "In it except to so temper mutual tastes mother. Interested cultivated its continuing now yet are. Out interested acceptance our partiality affronting unpleasant why add. Esteem garden men yet shy course. Consulted up my tolerably sometimes perpetual oh. Expression acceptance imprudence particular had eat unsatiable",
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.1,
            )
          ],
        ),
      ),
    );
  }
}
