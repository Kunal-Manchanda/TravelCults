import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderItem extends StatelessWidget {
  final image;
  final title;

  SliderItem({Key key, this.image, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * 0.08,
                color: Colors.black.withOpacity(0.5),
                child: Center(
                  child: Text(
                    title,
                    style: GoogleFonts.nunito(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
