import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sr_flutter/setup/layout.dart';
import 'package:sr_flutter/setup/layout_text.dart';
import 'package:url_launcher/url_launcher.dart';

class Button1 extends StatefulWidget {
  const Button1({super.key});

  @override
  State<Button1> createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  bool showButton = false;

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() {
              showButton = true;
            }),
        onExit: (_) => setState(() {
              showButton = false;
            }),
        child:DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey, width: 1)),
        child: OrientedLayout(
          orientation: LayoutOrientation.vertical,
          primaryAxisAlignItems: LayoutAlign.center,
          counterAxisAlignItems: LayoutAlign.center,
          diameter: 476.0199890136719,
          padding: [0, 0, 0, 0],
          itemSpacing: 10,
          children: [
            {
              25: MinDiameterSupport(
                orientation: LayoutOrientation.vertical,
                length: 25,
                diameter: 150,
                maximumDiameter: 476.0,
                primaryAxisAlignItems: LayoutAlign.center,
                counterAxisAlignItems: LayoutAlign.center,
                child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                        onTap: () {
                          _launchInBrowser(Uri.parse(
                              'https://c7116c-dc.myshopify.com/products/young-styled-orange-t-shirt'));
                        },
                        child: Center(
                          child: LayoutText('Agregar al Carrito',
                              postScale: 1,
                              textAlign: TextAlign.center,
                              
                              idtext: 'e',
                              fontSize: 24,
                              style: GoogleFonts.inter(
                                  color: Colors.black,
                                  decoration: showButton ? TextDecoration.underline : TextDecoration.none,
                                  height: 1.1640211640211642)),
                        ))),
              )
            }
          ],
    )));
  }
}
