import 'package:cuntry/Widgets/w_home_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff576F72),
        body: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.84,
            child: const Center(
              child: country_list(),
            ),
          ),
        ),
      ),
    );
  }
}
