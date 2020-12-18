import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_cults/components/clipper.dart';
import 'package:travel_cults/components/homeComponents/home_buttons.dart';
import 'package:travel_cults/constants.dart';
import 'package:travel_cults/screens/detailScreen/preview_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLiked = false;

  List<Map<String, String>> topDestinations = [
    {
      'title': 'Goa',
      'image':
          'https://www.oyorooms.com/travel-guide/wp-content/uploads/2020/07/Goa.jpg',
      'description':
          "In it except to so temper mutual tastes mother. Interested cultivated its continuing now yet are. Out interested acceptance our partiality affronting unpleasant why add. Esteem garden men yet shy course. Consulted up my tolerably sometimes perpetual oh. Expression acceptance imprudence particular had eat unsatiable",
    },
    {
      'title': 'Manali',
      'image': 'https://www.holidify.com/images/bgImages/MANALI.jpg',
      'description':
          "In it except to so temper mutual tastes mother. Interested cultivated its continuing now yet are. Out interested acceptance our partiality affronting unpleasant why add. Esteem garden men yet shy course. Consulted up my tolerably sometimes perpetual oh. Expression acceptance imprudence particular had eat unsatiable",
    },
    {
      'title': 'Himachal',
      'image':
          'https://lp-cms-production.imgix.net/2019-06/GettyImages-149353949_high.jpg',
      'description':
          "In it except to so temper mutual tastes mother. Interested cultivated its continuing now yet are. Out interested acceptance our partiality affronting unpleasant why add. Esteem garden men yet shy course. Consulted up my tolerably sometimes perpetual oh. Expression acceptance imprudence particular had eat unsatiable",
    },
    {
      'title': 'Bali',
      'image':
          'https://a.cdn-hotels.com/gdcs/production75/d966/8994658f-13ad-4106-bde4-856450359f47.jpg',
      'description':
          "In it except to so temper mutual tastes mother. Interested cultivated its continuing now yet are. Out interested acceptance our partiality affronting unpleasant why add. Esteem garden men yet shy course. Consulted up my tolerably sometimes perpetual oh. Expression acceptance imprudence particular had eat unsatiable",
    },
    {
      'title': 'Greece',
      'image':
          'https://cdn.kimkim.com/files/a/content_articles/featured_photos/0e3794a0b646d638627afb626bf9ee46f472feb1/big-0bb2a2bea537c680f141d40cb484d888.jpg',
      'description':
          "In it except to so temper mutual tastes mother. Interested cultivated its continuing now yet are. Out interested acceptance our partiality affronting unpleasant why add. Esteem garden men yet shy course. Consulted up my tolerably sometimes perpetual oh. Expression acceptance imprudence particular had eat unsatiable",
    },
    {
      'title': 'Kedarnath',
      'image':
          'https://i.pinimg.com/originals/12/b3/f5/12b3f51d60f63bb566d5b2a5e9526f64.jpg',
      'description':
          "In it except to so temper mutual tastes mother. Interested cultivated its continuing now yet are. Out interested acceptance our partiality affronting unpleasant why add. Esteem garden men yet shy course. Consulted up my tolerably sometimes perpetual oh. Expression acceptance imprudence particular had eat unsatiable",
    },
    {
      'title': 'Shimla',
      'image':
          'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201810/SHIMLA.jpeg?p8rkDgUaxdIezLOdixVSYZfIdYEkHBUU',
      'description':
          "In it except to so temper mutual tastes mother. Interested cultivated its continuing now yet are. Out interested acceptance our partiality affronting unpleasant why add. Esteem garden men yet shy course. Consulted up my tolerably sometimes perpetual oh. Expression acceptance imprudence particular had eat unsatiable",
    },
    {
      'title': 'Kasol',
      'image':
          'https://images.thrillophilia.com/image/upload/s--_MoTOmRC--/c_fill,f_auto,fl_strip_profile,h_600,q_auto,w_975/v1/images/photos/000/089/998/original/1466491434_x140515163940-Kasol2.jpg.pagespeed.ic.LlpoGzNqTU.jpg.jpg?1466491434',
      'description':
          "In it except to so temper mutual tastes mother. Interested cultivated its continuing now yet are. Out interested acceptance our partiality affronting unpleasant why add. Esteem garden men yet shy course. Consulted up my tolerably sometimes perpetual oh. Expression acceptance imprudence particular had eat unsatiable",
    },
  ];

  _pressed() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        color: kPrimaryColor,
        child: Column(
          children: [
            ClipPath(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                color: Colors.white,
              ),
              clipper: Clipper(),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hi, User \nYou are in New Delhi",
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600)),
                  IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 35,
                      ),
                      onPressed: null)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.cloudSunRain,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "27 C",
                    style:
                        GoogleFonts.nunito(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomeButtons(
                      icon: "assets/icons/flight.png",
                      content: "Flight",
                      iconColor: Colors.white),
                  HomeButtons(
                      icon: "assets/icons/hotel.png",
                      content: "Hotel",
                      iconColor: Colors.white),
                  HomeButtons(
                      icon: "assets/icons/car.png",
                      content: "Cars",
                      iconColor: Colors.white),
                  HomeButtons(
                      icon: "assets/icons/train.png",
                      content: "Train",
                      iconColor: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: StaggeredGridView.countBuilder(
                  padding: EdgeInsets.all(20),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  itemCount: topDestinations.length,
                  itemBuilder: (BuildContext context, int index) => InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PreviewScreen(
                                  title: topDestinations[index]['title'],
                                  image: topDestinations[index]['image'],
                                  description: topDestinations[index]
                                      ['description'],
                                ))),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  NetworkImage(topDestinations[index]['image']),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(7),
                                    constraints: BoxConstraints(
                                        maxWidth: size.width * 0.2),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.7),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            topDestinations[index]['title'],
                                            style: GoogleFonts.nunito(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => _pressed(),
                                    child: Icon(
                                      isLiked
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: isLiked
                                          ? kPrimaryColor
                                          : Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  staggeredTileBuilder: (int index) =>
                      StaggeredTile.count(1, (index % 2 == 0) ? 1.5 : 1.2),
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
