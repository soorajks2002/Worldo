import 'dart:convert';
import 'package:cuntry/Data/country_data.dart';
import 'package:cuntry/Pages/details_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class country_list extends StatefulWidget {
  const country_list({Key? key}) : super(key: key);

  @override
  _country_listState createState() => _country_listState();
}

class _country_listState extends State<country_list> {
  final url = "https://restcountries.com/v3.1/all";
  var allCountryData = [];
  List skip = [36, 73, 202, 215, 237];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var response = await http.get(Uri.parse(url));
    var jsonData = response.body;

    var decodeData = jsonDecode(jsonData);

    setState(() {
      allCountryData = decodeData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        itemCount: allCountryData.length,
        itemBuilder: (BuildContext context, int index) {
          print(index);

          if (index == 36 ||
              index == 202 ||
              index == 237 ||
              index == 73 ||
              index == 215) {
            var tempData = CountryData(
              nameCommon: allCountryData[index]["name"]["common"],
              capital: " ",
              flagUrl: allCountryData[index]["flags"]["png"],
              nameOfficial: allCountryData[index]["name"]["official"],
              independent: allCountryData[index]["independent"],
              unMember: allCountryData[index]["unMember"],
              currencyName: " ",
              currencySymbol: " ",
              latitude: allCountryData[index]["latlng"][0],
              longitude: allCountryData[index]["latlng"][1],
              landLocked: allCountryData[index]["landlocked"],
              area: allCountryData[index]["area"],
              popultaion: allCountryData[index]["population"],
              timeZone: allCountryData[index]["timezones"][0],
              continents: allCountryData[index]["continents"][0],
            );

            return InkWell(
              child: Center(
                child: country_tile(cntyData: tempData),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsPage(cnty_show: tempData)));
              },
            );
          } else if (index == 135) {
            var tempData = CountryData(
              nameCommon: allCountryData[index]["name"]["common"],
              capital: " ",
              flagUrl: allCountryData[index]["flags"]["png"],
              nameOfficial: allCountryData[index]["name"]["official"],
              independent: true,
              unMember: allCountryData[index]["unMember"],
              currencyName: " ",
              currencySymbol: " ",
              latitude: allCountryData[index]["latlng"][0],
              longitude: allCountryData[index]["latlng"][1],
              landLocked: allCountryData[index]["landlocked"],
              area: allCountryData[index]["area"],
              popultaion: allCountryData[index]["population"],
              timeZone: allCountryData[index]["timezones"][0],
              continents: allCountryData[index]["continents"][0],
            );

            return InkWell(
              child: Center(
                child: country_tile(cntyData: tempData),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsPage(cnty_show: tempData)));
              },
            );
          } else {
            var tempData = CountryData(
              nameCommon: allCountryData[index]["name"]["common"],
              capital: allCountryData[index]["capital"][0],
              flagUrl: allCountryData[index]["flags"]["png"],
              nameOfficial: allCountryData[index]["name"]["official"],
              independent: allCountryData[index]["independent"],
              unMember: allCountryData[index]["unMember"],
              currencyName: " ",
              currencySymbol: " ",
              latitude: allCountryData[index]["latlng"][0],
              longitude: allCountryData[index]["latlng"][1],
              landLocked: allCountryData[index]["landlocked"],
              area: allCountryData[index]["area"],
              popultaion: allCountryData[index]["population"],
              timeZone: allCountryData[index]["timezones"][0],
              continents: allCountryData[index]["continents"][0],
            );

            return InkWell(
              child: Center(
                child: country_tile(cntyData: tempData),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsPage(cnty_show: tempData)));
              },
            );
          }
        });
  }
}

class country_tile extends StatelessWidget {
  final CountryData cntyData;

  const country_tile({Key? key, required this.cntyData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.022,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(cntyData.flagUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.17,
                  child: name_text(
                    name: cntyData.nameCommon,
                    count: false,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              name_text(
                name: cntyData.capital,
                count: true,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: const Color(0xff7D9D9C),
          border: Border.all(
            color: const Color(0xff2C3639),
            width: 5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class name_text extends StatelessWidget {
  final String name;
  final bool count;
  const name_text({Key? key, required this.name, required this.count})
      : super(key: key);

  // var txtC = Color(0xffFFAFAF);

  @override
  Widget build(BuildContext context) {
    // txtC = count ? const Color(0xffFFAFAF) : const Color(0xffB8E4F0);

    return Text(
      name,
      textAlign: TextAlign.center,
      style: GoogleFonts.acme(
        color: Color(0xff2C3333),
        fontSize: 34,
      ),
    );
  }
}
