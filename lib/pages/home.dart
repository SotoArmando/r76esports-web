import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sr_flutter/button/button0.dart';
import 'package:sr_flutter/landscape_homepage.dart';
import 'package:sr_flutter/r76_appbar.dart';
import 'package:sr_flutter/setup/layout.dart';
import 'package:sr_flutter/setup/layout_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:google_fonts/';
// GoogleFonts.teko()

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: R76Appbar(
        width: width,
        preferredSize: Size.fromHeight(width * 0.04399789584429248),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Text('portrait');
          } else {
            return LandscapeHomepage();
          }
        },
      ),
    );
  }
}
