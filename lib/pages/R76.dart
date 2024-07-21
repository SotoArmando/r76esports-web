import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sr_flutter/pages/home.dart';
import 'package:sr_flutter/r76_appbar.dart';
import 'package:sr_flutter/setup/layout.dart';
import 'package:sr_flutter/setup/layout_text.dart';
import 'package:sr_flutter/youtubeiframe.dart';

class R76 extends StatefulWidget {
  const R76({super.key});

  @override
  State<R76> createState() => _R76State();
}

class _R76State extends State<R76> {
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
      body:hide? ColoredBox(color: Colors.black) : OrientationBuilder(
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
                      1122.030029296875: OrientedLayout(
                          orientation: LayoutOrientation.vertical,
                          primaryAxisAlignItems: LayoutAlign.min,
                          counterAxisAlignItems: LayoutAlign.min,
                          diameter: 1901,
                          padding: [
                            243,
                            46.06999969482422,
                            183.9199981689453,
                            266.94000244140625
                          ],
                          itemSpacing: 0,
                          children: [
                            {
                              69: MinDiameterSupport(
                                  diameter: 350,
                                  length: 69,
                                  maximumDiameter: 1901,
                                  orientation: LayoutOrientation.vertical,
                                  primaryAxisAlignItems: LayoutAlign.min,
                                  counterAxisAlignItems: LayoutAlign.min,
                                  child: OrientedLayout(
                                      orientation: LayoutOrientation.vertical,
                                      primaryAxisAlignItems: LayoutAlign.min,
                                      counterAxisAlignItems: LayoutAlign.min,
                                      diameter: 350,
                                      padding: [0, 0, 0, 0],
                                      itemSpacing: 9,
                                      children: [
                                        {
                                          59: LayoutText('ABOUT R76',
                                              style: GoogleFonts.teko(
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.6723356009070294,
                                                  color: Colors.white))
                                        },
                                        {
                                          1: OrientedLayout(
                                              orientation:
                                                  LayoutOrientation.vertical,
                                              primaryAxisAlignItems:
                                                  LayoutAlign.min,
                                              counterAxisAlignItems:
                                                  LayoutAlign.min,
                                              diameter: 237.0864715576172,
                                              padding: [0, 0, 0, 0],
                                              itemSpacing: 0,
                                              children: [])
                                        }
                                      ]))
                            },
                            {
                              19.280000686645508: MinDiameterSupport(
                                  diameter: 74,
                                  length: 19.280000686645508,
                                  maximumDiameter: 1901,
                                  orientation: LayoutOrientation.vertical,
                                  primaryAxisAlignItems: LayoutAlign.min,
                                  counterAxisAlignItems: LayoutAlign.min,
                                  child:
                                      DecoratedBox(decoration: BoxDecoration()))
                            },
                            {
                              178.4600067138672: MinDiameterSupport(
                                  diameter: 1474.0799560546875,
                                  length: 178.4600067138672,
                                  maximumDiameter: 1901,
                                  orientation: LayoutOrientation.vertical,
                                  primaryAxisAlignItems: LayoutAlign.min,
                                  counterAxisAlignItems: LayoutAlign.min,
                                  child: OrientedLayout(
                                      orientation: LayoutOrientation.vertical,
                                      primaryAxisAlignItems: LayoutAlign.min,
                                      counterAxisAlignItems: LayoutAlign.min,
                                      diameter: 1474.0799560546875,
                                      padding: [0, 0, 0, 0],
                                      itemSpacing: 32,
                                      children: [
                                        {
                                          21.1200008392334: LayoutText(
                                              'Rooted in our legacy of raising trophies and inspired by our passion for victory.',
                                              softWrap: true,
                                              style: GoogleFonts.inter(
                                                  height: 1.400933955970647,
                                                  color: Colors.white))
                                        },
                                        {
                                          29.979999542236328: LayoutText(
                                              'We are R76.',
                                              softWrap: true,
                                              style: GoogleFonts.inter(
                                                  height: 1.7341040462427746,
                                                  color: Colors.white))
                                        },
                                        {
                                          63.36000061035156: LayoutText(
                                              'T1 Entertainment & Sports is a global esports joint venture that owns and operates the ultra-successful T1 League of Legends (LoL) Champions Korea (LCK) team, along with teams in competitive \ngaming segments that include Dota 2, Super Smash Bros., Valorant, Wild Rift, Overwatch Contenders, Splitgate. Building upon the rich legacy of SKT T1, T1 will expand its teams globally, celebrate \nnew victories, and create even more opportunities for fans to embrace T1’s gaming culture, content, and players in every corner of the world.',
                                              idtext: 'e\ne\ne',
                                              softWrap: true,
                                              style: GoogleFonts.inter(
                                                  height: 1.400933955970647,
                                                  color: Colors.white))
                                        }
                                      ]))
                            },
                            {
                              56.970001220703125: MinDiameterSupport(
                                  diameter: 74,
                                  length: 56.970001220703125,
                                  maximumDiameter: 1901,
                                  orientation: LayoutOrientation.vertical,
                                  primaryAxisAlignItems: LayoutAlign.min,
                                  counterAxisAlignItems: LayoutAlign.min,
                                  child:
                                      DecoratedBox(decoration: BoxDecoration()))
                            },
                            {
                              54.310001373291016: MinDiameterSupport(
                                  diameter: 450,
                                  length: 54.310001373291016,
                                  maximumDiameter: 1901,
                                  orientation: LayoutOrientation.vertical,
                                  primaryAxisAlignItems: LayoutAlign.min,
                                  counterAxisAlignItems: LayoutAlign.min,
                                  child: OrientedLayout(
                                      orientation: LayoutOrientation.vertical,
                                      primaryAxisAlignItems: LayoutAlign.min,
                                      counterAxisAlignItems: LayoutAlign.min,
                                      diameter: 450,
                                      padding: [0, 0, 0, 0],
                                      itemSpacing: 5,
                                      children: [
                                        {
                                          48.310001373291016: LayoutText(
                                              'OUR LEADERSHIP:',
                                              style: GoogleFonts.teko(
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.7243841485183862,
                                                  color: Colors.white))
                                        },
                                        {
                                          1: OrientedLayout(
                                              orientation:
                                                  LayoutOrientation.vertical,
                                              primaryAxisAlignItems:
                                                  LayoutAlign.min,
                                              counterAxisAlignItems:
                                                  LayoutAlign.min,
                                              diameter: 450,
                                              padding: [0, 0, 0, 0],
                                              itemSpacing: 0,
                                              children: [])
                                        }
                                      ]))
                            },
                            {
                              431: MinDiameterSupport(
                                  diameter: 431,
                                  length: 1415.75,
                                  maximumDiameter: 1901,
                                  orientation: LayoutOrientation.vertical,
                                  primaryAxisAlignItems: LayoutAlign.min,
                                  counterAxisAlignItems: LayoutAlign.min,
                                  child: OrientedLayout(
                                      orientation: LayoutOrientation.horizontal,
                                      primaryAxisAlignItems: LayoutAlign.min,
                                      counterAxisAlignItems: LayoutAlign.min,
                                      diameter: 431,
                                      padding: [0, 0, 0, 0],
                                      itemSpacing: 75.75,
                                      children: [
                                        {
                                          572: Image.asset(
                                            'assets/R76/1721520063485.png',
                                            fit: BoxFit.cover,
                                          )
                                        },
                                        {
                                          768: OrientedLayout(
                                              orientation:
                                                  LayoutOrientation.vertical,
                                              primaryAxisAlignItems:
                                                  LayoutAlign.min,
                                              counterAxisAlignItems:
                                                  LayoutAlign.min,
                                              diameter: 768,
                                              padding: [0, 0, 0, 0],
                                              itemSpacing: 16,
                                              children: [
                                                {
                                                  127: LayoutText(
                                                    'ARMANDO SOTO',
                                                    idtext: 'e\ne\ne\ne\ne\ne',
                                                    style: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        height:
                                                            1.3826998689384011,
                                                        color: Colors.white),
                                                        softWrap: true,
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            ' - CEO\nJoe Marsh is CEO of T1 Entertainment & Sports, a global esports joint venture created by Comcast \nSpectacor and SK Telecom in October 2019. He oversees operations based in Seoul, Philadelphia, \nLos Angeles and is responsible for the growth and optimization of T1’s global presence and expansion \ninto new businesses and revenue streams surrounding competitive gaming culture and lifestyle, \ncontent, and merchandise.',
                                                        
                                                        style: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height:
                                                            1.3826998689384011,
                                                        color: Colors.white),
                                                      )
                                                    ],
                                                  )
                                                },
                                                {
                                                  42.2400016784668: MinDiameterSupport(
                                                      diameter:
                                                          734.8900146484375,
                                                      length: 42.2400016784668,
                                                      maximumDiameter: 768,
                                                      orientation:
                                                          LayoutOrientation
                                                              .vertical,
                                                      primaryAxisAlignItems:
                                                          LayoutAlign.min,
                                                      counterAxisAlignItems:
                                                          LayoutAlign.min,
                                                      child: LayoutText(
                                                          'Joe previously served as Chief Business Officer of Comcast’s Spectacor Gaming division and the \nPhiladelphia Fusion esports franchise that competes in the Overwatch League. ',
                                                          idtext: 'e\ne',
                                                          softWrap: true,
                                                          style: GoogleFonts.inter(
                                                              height:
                                                                  1.3826998689384011,
                                                              color: Colors
                                                                  .white)))
                                                },
                                                {
                                                  211.1999969482422: LayoutText(
                                                      'Joe was named Vice President and Chief Financial Officer of the Fusion in 2018, providing direct \noversight of financials for the team, including budgeting, forecasting, and long-range planning. Prior to  joining Spectacor Gaming and the Philadelphia Fusion, Joe held several finance positions at Comcast  Spectacor, where he was responsible for the development, coordination, consolidation and \ncommunication of the company\'s annual budgeting, long-range planning and forecasting functions \nfor Comcast Spectacor’s core businesses. Joe graduated with a degree in Marketing from Millersville \nUniversity and later earned his MBA in Finance, Analytics and Strategic Management from Villanova \nUniversity. Marsh currently serves as a strategic advisor to Spectacor Gaming, G4tv and the \nPhiladelphia Fusion. Joe previously served as a board member of Nerd Street Gamers. Joe lives in the \nPhiladelphia area with his wife Kelly and daughters Caden and Colbie.',
                                                      idtext: 'e\n' * 9,
                                                      softWrap: true,
                                                      style: GoogleFonts.inter(
                                                          height:
                                                              1.3826998689384011,
                                                          color: Colors.white))
                                                }
                                              ])
                                        }
                                      ]))
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