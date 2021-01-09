import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_cults/components/detailsComponents/filterComponents/activities_items.dart';
import 'package:travel_cults/components/detailsComponents/filterComponents/categories_items.dart';
import 'package:travel_cults/components/detailsComponents/filterComponents/duration_items.dart';
import 'package:travel_cults/components/detailsComponents/filterComponents/filter_constants.dart';
import 'package:travel_cults/components/detailsComponents/filterComponents/rating_stars.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              FontAwesomeIcons.times,
              color: Colors.black,
            ),
          ),
          title: Text("Filters"),
          actions: [
            FlatButton(
              onPressed: () {},
              child: Text(
                "RESET",
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.width * 0.015,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.04,
                    vertical: size.width * 0.02,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Categories",
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: size.width * 0.03,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CategoriesItems(
                              title: "Honeymoon",
                              value: honeymoonCheckbox,
                              callback: (newValue) {
                                setState(() {
                                  honeymoonCheckbox = newValue;
                                });
                              },
                            ),
                            CategoriesItems(
                              title: "Family",
                              value: familyCheckbox,
                              callback: (newValue) {
                                setState(() {
                                  familyCheckbox = newValue;
                                });
                              },
                            ),
                            CategoriesItems(
                              title: "Friends",
                              value: friendsCheckbox,
                              callback: (newValue) {
                                setState(() {
                                  friendsCheckbox = newValue;
                                });
                              },
                            ),
                            CategoriesItems(
                              title: "Leisure",
                              value: leisureCheckbox,
                              callback: (newValue) {
                                setState(() {
                                  leisureCheckbox = newValue;
                                });
                              },
                            ),
                            CategoriesItems(
                              title: "Business",
                              value: businessCheckbox,
                              callback: (newValue) {
                                setState(() {
                                  businessCheckbox = newValue;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.width * 0.015,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.04,
                    vertical: size.width * 0.02,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Durations(days)",
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: size.width * 0.03,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DurationItems(
                                  title: "1-3",
                                  value: oneToThreeCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      oneToThreeCheckbox = newValue;
                                    });
                                  },
                                ),
                                DurationItems(
                                  title: "7-9",
                                  value: sevenToNineCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      sevenToNineCheckbox = newValue;
                                    });
                                  },
                                ),
                                DurationItems(
                                  title: ">12",
                                  value: aboveTwelveCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      aboveTwelveCheckbox = newValue;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DurationItems(
                                  title: "4-6",
                                  value: fourToSixCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      fourToSixCheckbox = newValue;
                                    });
                                  },
                                ),
                                DurationItems(
                                  title: "10-12",
                                  value: tenToTwelveCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      tenToTwelveCheckbox = newValue;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.width * 0.015,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.04,
                    vertical: size.width * 0.02,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Budget per person(Rs)",
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: size.width * 0.03,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DurationItems(
                                  title: "Below 10,000",
                                  value: belowTenThousandCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      belowTenThousandCheckbox = newValue;
                                    });
                                  },
                                ),
                                DurationItems(
                                  title: "10,000 - 20,000",
                                  value: tenToTwentyThousandCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      tenToTwentyThousandCheckbox = newValue;
                                    });
                                  },
                                ),
                                DurationItems(
                                  title: "20,000 - 40,000",
                                  value: twentyToFortyThousandCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      twentyToFortyThousandCheckbox = newValue;
                                    });
                                  },
                                ),
                                DurationItems(
                                  title: "40,000 - 60,000",
                                  value: fortyToSixtyThousandCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      fortyToSixtyThousandCheckbox = newValue;
                                    });
                                  },
                                ),
                                DurationItems(
                                  title: "60,000 - 80,000",
                                  value: sixtyToEightyThousandCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      sixtyToEightyThousandCheckbox = newValue;
                                    });
                                  },
                                ),
                                DurationItems(
                                  title: "80,000 - 1 Lac",
                                  value: eightyToHundredThousandCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      eightyToHundredThousandCheckbox =
                                          newValue;
                                    });
                                  },
                                ),
                                DurationItems(
                                  title: "1 Lac - 2 Lac",
                                  value: hundredToTwoHundredThousandCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      hundredToTwoHundredThousandCheckbox =
                                          newValue;
                                    });
                                  },
                                ),
                                DurationItems(
                                  title: "Above 2 Lac",
                                  value: aboveTwoHundredThousandCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      aboveTwoHundredThousandCheckbox =
                                          newValue;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.width * 0.015,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.04,
                    vertical: size.width * 0.02,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hotel Star Rating",
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: size.width * 0.03,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: fiveStarCheckbox,
                                      onChanged: (bool value) {
                                        setState(() {
                                          fiveStarCheckbox = value;
                                        });
                                      },
                                    ),
                                    RatingStars(
                                      title: "5 Star",
                                      thirdStar: Colors.yellow,
                                      fourthStar: Colors.yellow,
                                      fifthStar: Colors.yellow,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: fourStarCheckbox,
                                      onChanged: (bool value) {
                                        setState(() {
                                          fourStarCheckbox = value;
                                        });
                                      },
                                    ),
                                    RatingStars(
                                      title: "4 Star",
                                      thirdStar: Colors.yellow,
                                      fourthStar: Colors.yellow,
                                      fifthStar: Colors.grey.withOpacity(0.7),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: threeStarCheckbox,
                                      onChanged: (bool value) {
                                        setState(() {
                                          threeStarCheckbox = value;
                                        });
                                      },
                                    ),
                                    RatingStars(
                                      title: "3 Star",
                                      thirdStar: Colors.yellow,
                                      fourthStar: Colors.grey.withOpacity(0.7),
                                      fifthStar: Colors.grey.withOpacity(0.7),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: twoStarCheckbox,
                                      onChanged: (bool value) {
                                        setState(() {
                                          twoStarCheckbox = value;
                                        });
                                      },
                                    ),
                                    RatingStars(
                                      title: "2 Star",
                                      thirdStar: Colors.grey.withOpacity(0.7),
                                      fourthStar: Colors.grey.withOpacity(0.7),
                                      fifthStar: Colors.grey.withOpacity(0.7),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.width * 0.015,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.04,
                    vertical: size.width * 0.02,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Activities",
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: size.width * 0.03,
                          horizontal: size.width * 0.07,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                ActivitiesItems(
                                  title: "Adventures",
                                  value: adventureCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      adventureCheckbox = newValue;
                                    });
                                  },
                                  icon: FontAwesomeIcons.map,
                                ),
                                ActivitiesItems(
                                  title: "Religious",
                                  value: religiousCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      religiousCheckbox = newValue;
                                    });
                                  },
                                  icon: FontAwesomeIcons.pray,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                ActivitiesItems(
                                  title: "Nature",
                                  value: natureCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      natureCheckbox = newValue;
                                    });
                                  },
                                  icon: Icons.nature_people,
                                ),
                                ActivitiesItems(
                                  title: "Water Activities",
                                  value: waterActivitiesCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      waterActivitiesCheckbox = newValue;
                                    });
                                  },
                                  icon: Icons.directions_boat,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                ActivitiesItems(
                                  title: "Hill Station",
                                  value: hillStationCheckbox,
                                  callback: (newValue) {
                                    setState(() {
                                      hillStationCheckbox = newValue;
                                    });
                                  },
                                  icon: FontAwesomeIcons.mountain,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.width * 0.03,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: size.width * 0.12,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Center(
                    child: Text(
                      "Apply Filter",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
