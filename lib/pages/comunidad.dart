import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sr_flutter/pages/home.dart';
import 'package:sr_flutter/r76_appbar.dart';
import 'package:sr_flutter/setup/layout.dart';
import 'package:sr_flutter/setup/layout_text.dart';
import 'package:sr_flutter/youtubeiframe.dart';

class Comunidad extends StatefulWidget {
  const Comunidad({super.key});

  @override
  State<Comunidad> createState() => _ComunidadState();
}

class _ComunidadState extends State<Comunidad> {
 bool hide = false;

  void prepareForRoute() {
    setState(() {
      hide = true;
    });
    Future.delayed(Duration(milliseconds: 1000), () {
      setState(() {
        hide = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Color(0xFF2A2829),
      appBar: R76Appbar(
        width: width,
        preferredSize: Size.fromHeight(width * 0.04399789584429248),
        prepareForRoute: prepareForRoute,
      ),
      body: hide? ColoredBox(color: Colors.black) : OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Text('portrait');
          } else {
            return SingleChildScrollView(
              child: OrientedLayout(
                  orientation: LayoutOrientation.vertical,
                  primaryAxisAlignItems: LayoutAlign.min,
                  counterAxisAlignItems: LayoutAlign.min,
                  constraintToMinDiameter: true,
                  diameter: 1901,
                  padding: [0, 0, 0, 0],
                  itemSpacing: 0,
                  children: [
                    SafeArea(child: SizedBox.shrink()),
                    {
                      103: ColoredBox(
                        color: Colors.black,
                        child: OrientedLayout(
                            orientation: LayoutOrientation.vertical,
                            primaryAxisAlignItems: LayoutAlign.min,
                            counterAxisAlignItems: LayoutAlign.center,
                            diameter: 1901,
                            padding: [179.13, 22+9, 179, 22-9],
                            itemSpacing: 10,
                            children: [
                              {
                                59: LayoutText('R76 Teams',
                                    style: GoogleFonts.teko(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        height: 1.619099890230516))
                              }
                            ]),
                      )
                    },
                    {
                      850.2001342773438: OrientedLayout(
                          orientation: LayoutOrientation.vertical,
                          primaryAxisAlignItems: LayoutAlign.min,
                          counterAxisAlignItems: LayoutAlign.min,
                          diameter: 1901,
                          padding: [0, 0, 0, 0],
                          itemSpacing: 0,
                          children: [
                            {
                              684.3400268554688: OrientedLayout(
                                  orientation: LayoutOrientation.vertical,
                                  primaryAxisAlignItems: LayoutAlign.min,
                                  counterAxisAlignItems: LayoutAlign.min,
                                  diameter: 1901,
                                  padding: [57, 63, 57, 63],
                                  itemSpacing: 0,
                                  children: [
                                    {
                                      558.3400268554688: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: OrientedLayout(
                                          orientation:
                                              LayoutOrientation.horizontal,
                                          primaryAxisAlignItems:
                                              LayoutAlign.min,
                                          counterAxisAlignItems:
                                              LayoutAlign.center,
                                          diameter: 558.3400268554688,
                                          padding: [0, 0, 0, 0],
                                          itemSpacing: 37,
                                          children: [
                                            {
                                              418.7699890136719: Image.asset('assets/R76/game #1.png')
                                            },
                                            {
                                              418.7699890136719: Image.asset('assets/R76/game #2.png')
                                            },
                                            {
                                              418.7699890136719: Image.asset('assets/R76/game #3.png')
                                            },
                                            {
                                              418.7699890136719: Image.asset('assets/R76/game #4.png')
                                            },
                                            {
                                              418.7699890136719: Image.asset('assets/R76/game #1.png')
                                            },
                                          ]),)
                                    }
                                  ])
                            }
                          ])
                    },
                  {
                    99.5199966430664: DecoratedBox(
                      decoration: BoxDecoration(color: Color(0xFFD72A47)),
                      child: ProportionsRow(
                        defaultDiameter: 99.51,
                        mainAxisAlignment: MainAxisAlignment.center,
                        // color: Color(0xFFD72A47),
                        children: [
                          {
                            1284: MinDiameterSupport(
                              orientation: LayoutOrientation.horizontal,
                              primaryAxisAlignItems: LayoutAlign.center,
                              counterAxisAlignItems: LayoutAlign.center,
                              maximumDiameter: 99.51,
                              diameter: 86.08,
                              length: 1284,
                              child: Center(
                                child: Image.asset('assets/R76/opgg.png'),
                              ),
                            )
                          }
                        ],
                      ),
                    )
                  },
                    {
                      301.2: ColoredBox(
                          color: Color(0xFF000000),
                          child: OrientedLayout(
                              orientation: LayoutOrientation.vertical,
                              primaryAxisAlignItems: LayoutAlign.min,
                              counterAxisAlignItems: LayoutAlign.center,
                              diameter: 1901,
                              padding: [0, 69, 0, 2.819999933242798],
                              itemSpacing: 0,
                              children: [
                                {
                                  33: OrientedLayout(
                                      orientation: LayoutOrientation.horizontal,
                                      primaryAxisAlignItems: LayoutAlign.center,
                                      counterAxisAlignItems: LayoutAlign.max,
                                      diameter: 33,
                                      padding: [0, 0, 0, 0],
                                      itemSpacing: 39,
                                      children: [
                                        {
                                          26: Image.asset(
                                              'assets/sr/Social Icon #01.png')
                                        },
                                        {
                                          26: Image.asset(
                                              'assets/sr/Social Icon #02.png')
                                        },
                                        {
                                          26: Image.asset(
                                              'assets/sr/Social Icon #03.png')
                                        },
                                        {
                                          26: Image.asset(
                                              'assets/sr/Social Icon #04.png')
                                        },
                                        {
                                          23: Image.asset(
                                              'assets/sr/Social Icon #05.png')
                                        },
                                        {
                                          26: Image.asset(
                                              'assets/sr/Social Icon #06.png')
                                        },
                                        {
                                          26: Image.asset(
                                              'assets/sr/Social Icon #07.png')
                                        }
                                      ])
                                },
                                {
                                  43: ColoredBox(
                                    color: Color(0xFF000000),
                                  )
                                },
                                {
                                  21.170000076293945: ColoredBox(
                                      color: Color(0xFF000000),
                                      child: OrientedLayout(
                                          orientation:
                                              LayoutOrientation.horizontal,
                                          primaryAxisAlignItems:
                                              LayoutAlign.center,
                                          counterAxisAlignItems:
                                              LayoutAlign.center,
                                          diameter: 21.170000076293945,
                                          padding: [0, 0, 0, 0],
                                          itemSpacing: 47,
                                          children: [
                                            {
                                              76.55999755859375: OrientedLayout(
                                                  orientation: LayoutOrientation
                                                      .horizontal,
                                                  primaryAxisAlignItems:
                                                      LayoutAlign.center,
                                                  counterAxisAlignItems:
                                                      LayoutAlign.center,
                                                  diameter: 21.170000076293945,
                                                  padding: [
                                                    0,
                                                    0,
                                                    0,
                                                    0.049999237060546875
                                                  ],
                                                  itemSpacing: 0,
                                                  children: [
                                                    LayoutText('SK Square',
                                                        style:
                                                            GoogleFonts.inter(
                                                                color: Colors
                                                                    .white))
                                                  ])
                                            },
                                            {
                                              153.69000244140625:
                                                  OrientedLayout(
                                                      orientation:
                                                          LayoutOrientation
                                                              .horizontal,
                                                      primaryAxisAlignItems:
                                                          LayoutAlign.center,
                                                      counterAxisAlignItems:
                                                          LayoutAlign.center,
                                                      diameter:
                                                          21.170000076293945,
                                                      padding: [
                                                        0,
                                                        0,
                                                        0,
                                                        0.049999237060546875
                                                      ],
                                                      itemSpacing: 0,
                                                      children: [
                                                        LayoutText(
                                                            'Comcast Spectacor',
                                                            style: GoogleFonts
                                                                .inter(
                                                                    color: Colors
                                                                        .white))
                                                      ])
                                            }
                                          ]))
                                },
                                {
                                  1: MinDiameterSupport(
                                      diameter: 636.5,
                                      length: 1,
                                      maximumDiameter: 1901,
                                      orientation: LayoutOrientation.vertical,
                                      primaryAxisAlignItems: LayoutAlign.min,
                                      counterAxisAlignItems: LayoutAlign.center,
                                      child: ColoredBox(
                                        color: Colors.white,
                                      ))
                                },
                                {
                                  23.829999923706055:
                                      ColoredBox(color: Color(0xFF000000))
                                },
                                {23: ColoredBox(color: Color(0xFF000000))},
                                {
                                  18: ColoredBox(
                                      color: Color(0xFF000000),
                                      child: OrientedLayout(
                                          orientation:
                                              LayoutOrientation.horizontal,
                                          primaryAxisAlignItems:
                                              LayoutAlign.center,
                                          counterAxisAlignItems:
                                              LayoutAlign.max,
                                          diameter: 18,
                                          padding: [0, 0, 0, 0],
                                          itemSpacing: 0,
                                          children: [
                                            LayoutText('El equipo',
                                                style: GoogleFonts.inter(
                                                    color: Colors.white)),
                                            {
                                              75.16000366210938: DecoratedBox(
                                                  decoration: BoxDecoration())
                                            },
                                            LayoutText('Careers',
                                                style: GoogleFonts.inter(
                                                    color: Colors.white)),
                                            {
                                              67.1500015258789: DecoratedBox(
                                                  decoration: BoxDecoration())
                                            },
                                            LayoutText('Legal Terms',
                                                style: GoogleFonts.inter(
                                                    color: Colors.white)),
                                            {
                                              66.12999725341797: DecoratedBox(
                                                  decoration: BoxDecoration())
                                            },
                                            LayoutText('Contact',
                                                style: GoogleFonts.inter(
                                                    color: Colors.white)),
                                            {
                                              60.369998931884766: DecoratedBox(
                                                  decoration: BoxDecoration())
                                            },
                                            LayoutText('Privacy Policy',
                                                style: GoogleFonts.inter(
                                                    color: Colors.white)),
                                            {
                                              43.9900016784668: DecoratedBox(
                                                  decoration: BoxDecoration())
                                            },
                                            LayoutText('Cookie Policy',
                                                style: GoogleFonts.inter(
                                                    color: Colors.white))
                                          ]))
                                },
                                {
                                  49: ColoredBox(
                                      color: Color(0xFF000000),
                                      child: DecoratedBox(
                                          decoration: BoxDecoration()))
                                },
                                {
                                  17.200000762939453: ColoredBox(
                                      color: Color(0xFF000000),
                                      child: LayoutText(
                                          'COPYRIGHT @ 2024 SK Telecom CS T1 Co. ALL RIGHTS RESERVERED',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                              color: Colors.white)))
                                }
                              ]))
                    }
                  ]),
            );
          }
        },
      ),
    );
  }
}
