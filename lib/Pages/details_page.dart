// ignore_for_file: camel_case_types

import 'package:cuntry/Data/country_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  final CountryData cnty_show;
  const DetailsPage({Key? key, required this.cnty_show}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6D7A7),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const blank_height(he: 0.025),
              details_img(img_url: cnty_show.flagUrl),
              const blank_height(he: 0.04),
              disp_text(
                  question: "Official Name : ", ans: cnty_show.nameOfficial),
              const blank_height(he: 0.025),
              disp_text(question: "Common Name : ", ans: cnty_show.nameCommon),
              const blank_height(he: 0.025),
              disp_text(question: "Capital : ", ans: cnty_show.capital),
              const blank_height(he: 0.025),
              dispbool(question: "Independent : ", ans: cnty_show.independent),
              const blank_height(he: 0.025),
              dispbool(question: "UN Member : ", ans: cnty_show.unMember),
              const blank_height(he: 0.025),
              disp_text(question: "Continent : ", ans: cnty_show.continents),
              const blank_height(he: 0.025),
              disp_text_double(question: "Area : ", ans: cnty_show.area),
              const blank_height(he: 0.025),
              disp_text_int(
                  question: "Population : ", ans: cnty_show.popultaion),
              const blank_height(he: 0.025),
              disp_text_double(
                  question: "Latitude : ", ans: cnty_show.latitude),
              const blank_height(he: 0.025),
              disp_text_double(
                  question: "Longitude : ", ans: cnty_show.longitude),
              const blank_height(he: 0.025),
              dispbool(question: "Land Locked : ", ans: cnty_show.landLocked),
              const blank_height(he: 0.025),
            ],
          ),
        ),
      ),
    );
  }
}

class disp_text extends StatelessWidget {
  final String question, ans;
  const disp_text({Key? key, required this.question, required this.ans})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const blank_width(wi: 0.02),
        Text(
          question,
          textAlign: TextAlign.center,
          style: GoogleFonts.secularOne(
            color: Color(0xff2C3333),
            fontSize: 22.0,
          ),
        ),
        // const blank_width(wi: 0.02),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Text(
            ans,
            textAlign: TextAlign.center,
            style: GoogleFonts.secularOne(
              color: Color(0xff2C3333),
              fontSize: 22.0,
            ),
          ),
        ),
        const blank_width(wi: 0.02),
      ],
    );
  }
}

class disp_text_double extends StatelessWidget {
  final String question;
  final double ans;
  const disp_text_double({Key? key, required this.question, required this.ans})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const blank_width(wi: 0.02),
        Text(
          question,
          textAlign: TextAlign.center,
          style: GoogleFonts.secularOne(
            color: Color(0xff2C3333),
            fontSize: 22.0,
          ),
        ),
        // const blank_width(wi: 0.02),
        Text(
          ans.toString(),
          textAlign: TextAlign.center,
          style: GoogleFonts.secularOne(
            color: Color(0xff2C3333),
            fontSize: 22.0,
          ),
        ),
        const blank_width(wi: 0.02),
      ],
    );
  }
}

class disp_text_int extends StatelessWidget {
  final String question;
  final int ans;
  const disp_text_int({Key? key, required this.question, required this.ans})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const blank_width(wi: 0.02),
        Text(
          question,
          textAlign: TextAlign.center,
          style: GoogleFonts.secularOne(
            color: Color(0xff2C3333),
            fontSize: 22.0,
          ),
        ),
        // const blank_width(wi: 0.02),
        Text(
          ans.toString(),
          textAlign: TextAlign.center,
          style: GoogleFonts.secularOne(
            color: Color(0xff2C3333),
            fontSize: 22.0,
          ),
        ),
        const blank_width(wi: 0.02),
      ],
    );
  }
}

class details_img extends StatelessWidget {
  final String img_url;
  const details_img({Key? key, required this.img_url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(img_url),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class dispbool extends StatelessWidget {
  final String question;
  final bool ans;
  const dispbool({Key? key, required this.question, required this.ans})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String answer;

    if (ans) {
      answer = "YES";
    } else {
      answer = "NO";
    }

    return Row(
      children: [
        const blank_width(wi: 0.02),
        Text(
          question,
          textAlign: TextAlign.center,
          style: GoogleFonts.secularOne(
            color: Color(0xff2C3333),
            fontSize: 22.0,
          ),
        ),
        const blank_width(wi: 0.01),
        Text(
          answer,
          textAlign: TextAlign.center,
          style: GoogleFonts.secularOne(
            color: Color(0xff2C3333),
            fontSize: 22.0,
          ),
        ),
        const blank_width(wi: 0.02),
      ],
    );
  }
}

class blank_height extends StatelessWidget {
  final double he;
  const blank_height({Key? key, required this.he}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * he,
    );
  }
}

class blank_width extends StatelessWidget {
  final double wi;
  const blank_width({Key? key, required this.wi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * wi,
    );
  }
}
