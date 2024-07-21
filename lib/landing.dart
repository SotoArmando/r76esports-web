import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sr_flutter/setup/layout.dart';
import 'package:sr_flutter/setup/layout_text.dart';

class Landing extends StatefulWidget {
  const Landing({
    super.key,
  });

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int page = 0;
  bool next = true;
  bool loading = true;

  List<String> pages = [
    "assets/R76/pexels-rdne-7915280.jpg",
    "assets/R76/pexels-rdne-7915285.jpg",
    "assets/R76/pexels-rdne-7915289.jpg",
    "assets/R76/pexels-rdne-7915364.jpg"
  ];

  List<T> shiftList<T>(List<T> list, {required bool forward}) {
    if (list.isEmpty) return list;

    List<T> shiftedList = List<T>.filled(list.length, list[0], growable: false);

    if (forward) {
      for (int i = 0; i < list.length - 1; i++) {
        shiftedList[i + 1] = list[i];
      }
      shiftedList[0] = list[list.length - 1];
    } else {
      for (int i = 1; i < list.length; i++) {
        shiftedList[i - 1] = list[i];
      }
      shiftedList[list.length - 1] = list[0];
    }

    return shiftedList;
  }

  // @override
  // void initState() {
  //   Future.wait([
  //     precacheImage(
  //         Image.asset("assets/R76/pexels-rdne-7915280.jpg").image, context),
  //     precacheImage(
  //         Image.asset("assets/R76/pexels-rdne-7915285.jpg").image, context),
  //     precacheImage(
  //         Image.asset("assets/R76/pexels-rdne-7915289.jpg").image, context),
  //     precacheImage(
  //         Image.asset("assets/R76/pexels-rdne-7915364.jpg").image, context)
  //   ]).then((v) {
  //     setState(() {
  //       loading = false;
  //     });
  //   });

  //   // TODO: implement initState
  //   super.initState();
  // }

  void nextPage() {
    setState(() {
      page += 1;
      page %= 4;
      pages = shiftList(pages, forward: true);
      next = true;
    });
  }

  void prevPage() {
    setState(() {
      page -= 1;
      page %= 4;
      pages = shiftList(pages, forward: false);
      next = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // if (loading == true) {
    //   return ColoredBox(color: Colors.amber);
    // }

    final _offsetAnimation = Tween<Offset>(
      begin: next ? Offset(1, 0) : Offset(-1, 0),
      end: Offset.zero,
    );

    return ColoredBox(
      color: Colors.black,
      child: Stack(
        fit: StackFit.expand,
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            reverseDuration: Duration(milliseconds: 150),
            switchInCurve: Curves.easeOutExpo,
            switchOutCurve: Curves.easeOut,
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: SlideTransition(
                    position: animation.drive(_offsetAnimation), child: child),
              );
            },
            child: SizedBox.expand(
              key: ValueKey(page),
              child: Builder(
                builder: (c) => Stack(
                  children: pages
                      .map<Widget>((e) => SizedBox.expand(
                            child: Image.asset(
                              e,
                              fit: BoxFit.cover,
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
          ProportionsRow(
            defaultDiameter: 882,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            padding: [57.47, 0, 57.47, 0],
            children: [
              {
                60: GestureDetector(
                  onTapDown: (_) {
                    prevPage();
                  },
                  child: MinDiameterSupport(
                      orientation: LayoutOrientation.horizontal,
                      counterAxisAlignItems: LayoutAlign.center,
                      diameter: 60,
                      length: 60,
                      maximumDiameter: 882,
                      child: Image.asset(
                          'assets/R76/Button - _    _      Previous.png')),
                )
              },
              {
                60: GestureDetector(
                    onTapDown: (_) {
                      nextPage();
                    },
                    child: MinDiameterSupport(
                        orientation: LayoutOrientation.horizontal,
                        counterAxisAlignItems: LayoutAlign.center,
                        diameter: 60,
                        length: 60,
                        maximumDiameter: 882,
                        child: Image.asset(
                            'assets/R76/Button - _    _    _      Next.png')))
              },
            ],
          ),
          ProportionsRow(
            length: 1901,
            defaultDiameter: 882, padding: [
            38,
            0,
            0,
            38.3
          ], children: [
            {
              640: MinDiameterSupport(
                orientation: LayoutOrientation.horizontal,
                maximumDiameter: 882,
                counterAxisAlignItems: LayoutAlign.max,
                length: 500,
                diameter: 94,
                child: DecoratedBox(
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.5)),
                  child: ProportionsColumn(
                    defaultDiameter: 640,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    padding: [30.21,0,0,0],
                    children: [
                      {
                        54: LayoutText(
                          'Rainbow 76  Pro LATAM Gaming Team',
                          idtext: 'e',
                          style: GoogleFonts.crimsonText(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              height: 1.623905825535768),
                        )
                      }
                    ],
                  ),
                ),
              )
            }
          ])
        ],
      ),
    );
  }
}
