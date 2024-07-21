import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sr_flutter/setup/layout.dart';
import 'package:sr_flutter/setup/layout_text.dart';

import 'dart:math';

import 'package:sr_flutter/youtubeiframe.dart';
import 'package:url_launcher/url_launcher.dart';

Random random = new Random();

class _LandscapeHomepageState extends State<LandscapeHomepage> {
  List<String> productNames = [
    "Funny League Shirt",
    "League Players Top Diff Legends",
    "Funny League Shirt",
    "Tenis Rush Pro 4.0 Clay",
    "Air Athletic - Tenis para mujer de moda, para el gimnasio",
    "Tenis de correr fáciles de colocar transpirables, ",
    "League of Legends - Correa de reloj inteligente con licencia oficial,",
    "Camiseta con texto en inglés «Cute Tongue League», Negro, S ",
    "Funny Eat Sleep League Repeat Gift",
    "Tenis Rush Pro 4.0 para hombre"
  ];
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchInBrowserView(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color(0xFFFFFFFF),
      child: ListView(
          // itemExtent: 1000,
          children: [
            OrientedLayout(
                orientation: LayoutOrientation.vertical,
                primaryAxisAlignItems: LayoutAlign.min,
                counterAxisAlignItems: LayoutAlign.min,
                constraintToMinDiameter: true,
                diameter: 1901,
                padding: [0, 0, 0, 0],
                itemSpacing: 0,
                children: [
                  SafeArea(child: SizedBox.shrink()),
                  {882: Landing()},
                  {
                    235.8699951171875: ColoredBox(
                        color: Color(0xFFD72A47),
                        child: OrientedLayout(
                            orientation: LayoutOrientation.vertical,
                            primaryAxisAlignItems: LayoutAlign.center,
                            counterAxisAlignItems: LayoutAlign.max,
                            diameter: 1901,
                            padding: [233, 68, 581.2000122070312, 68],
                            itemSpacing: 10,
                            children: [
                              {
                                99.87000274658203: OrientedLayout(
                                    orientation: LayoutOrientation.horizontal,
                                    primaryAxisAlignItems: LayoutAlign.max,
                                    counterAxisAlignItems: LayoutAlign.center,
                                    diameter: 99.87000274658203,
                                    padding: [0, 0, 0, 0],
                                    itemSpacing: 138,
                                    children: [
                                      {
                                        103.18391418457031 * 1.3878743961352658:
                                            Image.asset('assets/R76/R76-1.png')
                                      },
                                      {
                                        368.67999267578125: OrientedLayout(
                                            orientation:
                                                LayoutOrientation.vertical,
                                            primaryAxisAlignItems:
                                                LayoutAlign.min,
                                            counterAxisAlignItems:
                                                LayoutAlign.min,
                                            diameter: 368.67999267578125,
                                            padding: [
                                              0,
                                              0,
                                              0,
                                              0
                                            ],
                                            // itemSpacing: 17,
                                            children: [
                                              {
                                                48.310001373291016: LayoutText(
                                                    'TOGETHER AS 1',
                                                    idtext: "Tog",
                                                    style: GoogleFonts.teko(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        height:
                                                            1.7349137931034482,
                                                        color: Colors.white))
                                              },
                                              17,
                                              {
                                                34.560001373291016: LayoutText(
                                                    'Rooted in our legacy of raising trophies and inspired by our \npassion for victory, we are Together as 1',
                                                    idtext: 'Rot\ne',
                                                    style: GoogleFonts.crimsonText(
                                                        height:
                                                            1.3851080864691754,
                                                        color: Colors.white,
                                                        letterSpacing:
                                                            0.028022417934347475))
                                              }
                                            ])
                                      }
                                    ])
                              }
                            ]))
                  },
                  {
                    198.88999938964844: OrientedLayout(
                        orientation: LayoutOrientation.vertical,
                        primaryAxisAlignItems: LayoutAlign.max,
                        counterAxisAlignItems: LayoutAlign.center,
                        diameter: 1901,
                        padding: [0, 45.18000030517578, 0, 41.959999084472656],
                        itemSpacing: 10,
                        children: [
                          {
                            111.75: MinDiameterSupport(
                                diameter: 642.8099975585938,
                                length: 111.75,
                                maximumDiameter: 1901,
                                orientation: LayoutOrientation.vertical,
                                primaryAxisAlignItems: LayoutAlign.max,
                                counterAxisAlignItems: LayoutAlign.center,
                                child: OrientedLayout(
                                    orientation: LayoutOrientation.vertical,
                                    primaryAxisAlignItems: LayoutAlign.min,
                                    counterAxisAlignItems: LayoutAlign.center,
                                    diameter: 642.8099975585938,
                                    padding: [0, 0, 0, 0],
                                    itemSpacing: 9,
                                    children: [
                                      {
                                        101.75: OrientedLayout(
                                            orientation:
                                                LayoutOrientation.vertical,
                                            primaryAxisAlignItems:
                                                LayoutAlign.min,
                                            counterAxisAlignItems:
                                                LayoutAlign.center,
                                            diameter: 642.8099975585938,
                                            padding: [0, 0, 0, 0],
                                            itemSpacing: 0,
                                            children: [
                                              {
                                                21.1200008392334: LayoutText(
                                                    'ESPORTS APPAREL',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height:
                                                            1.37012987012987))
                                              },
                                              {
                                                80.62999725341797: LayoutText(
                                                  'R76',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.teko(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color(0xFFFF4463),
                                                      height:
                                                          1.5822536317235965),
                                                  children: [
                                                    TextSpan(
                                                        text: ' COLLECTION',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black))
                                                  ],
                                                )
                                              }
                                            ])
                                      },
                                      {
                                        1: MinDiameterSupport(
                                            diameter: 385.69000244140625,
                                            length: 1,
                                            maximumDiameter: 642.8099975585938,
                                            orientation:
                                                LayoutOrientation.vertical,
                                            primaryAxisAlignItems:
                                                LayoutAlign.min,
                                            counterAxisAlignItems:
                                                LayoutAlign.center,
                                            child: ColoredBox(
                                              color: Colors.black,
                                            ))
                                      }
                                    ]))
                          }
                        ])
                  },
                  {
                    791.219970703125: OrientedLayout(
                        orientation: LayoutOrientation.horizontal,
                        primaryAxisAlignItems: LayoutAlign.min,
                        counterAxisAlignItems: LayoutAlign.center,
                        diameter: 791.219970703125,
                        padding: [57, 0, 57, 63.220001220703125],
                        itemSpacing: 0,
                        children: [
                          Expanded(
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  OrientedLayout(
                                      orientation: LayoutOrientation.horizontal,
                                      primaryAxisAlignItems: LayoutAlign.min,
                                      counterAxisAlignItems: LayoutAlign.min,
                                      diameter: 728,
                                      padding: [0, 0, 0, 0],
                                      itemSpacing: 10,
                                      children: List.generate(
                                        10,
                                        (e) => {
                                          476.0199890136719: OrientedLayout(
                                              orientation:
                                                  LayoutOrientation.vertical,
                                              primaryAxisAlignItems:
                                                  LayoutAlign.min,
                                              counterAxisAlignItems:
                                                  LayoutAlign.center,
                                              diameter: 476.0199890136719,
                                              padding: [0, 0, 0, 0],
                                              itemSpacing: 66,
                                              children: [
                                                {
                                                  635.6599731445312:
                                                      GestureDetector(
                                                          onTap: () {
                                                            _launchInBrowser(
                                                                Uri.parse(
                                                                    'https://c7116c-dc.myshopify.com/products/young-styled-orange-t-shirt'));
                                                          },
                                                          child: DecoratedBox(
                                                              decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: AssetImage(
                                                                          'assets/R76/product #${e + 1}.jpg'))),
                                                              child:
                                                                  OrientedLayout(
                                                                      orientation:
                                                                          LayoutOrientation
                                                                              .vertical,
                                                                      primaryAxisAlignItems:
                                                                          LayoutAlign
                                                                              .max,
                                                                      counterAxisAlignItems:
                                                                          LayoutAlign
                                                                              .min,
                                                                      diameter:
                                                                          476.0199890136719,
                                                                      padding: [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                                      itemSpacing:
                                                                          10,
                                                                      children: [
                                                                        {
                                                                          56: ColoredBox(
                                                                            color:
                                                                                Colors.white,
                                                                            child: OrientedLayout(
                                                                                orientation: LayoutOrientation.horizontal,
                                                                                primaryAxisAlignItems: LayoutAlign.center,
                                                                                counterAxisAlignItems: LayoutAlign.center,
                                                                                diameter: 56,
                                                                                padding: [0, 0, 0, 0],
                                                                                itemSpacing: 10,
                                                                                children: [
                                                                                  {
                                                                                    240: LayoutText(productNames[e], idtext: 'e\ne',maxLines: 3, style: GoogleFonts.inter(height: 1.6746987951807228))
                                                                                  }
                                                                                ]),
                                                                          )
                                                                        }
                                                                      ])))
                                                },
                                                {
                                                  26.34: OrientedLayout(
                                                    orientation:
                                                        LayoutOrientation
                                                            .vertical,
                                                    primaryAxisAlignItems:
                                                        LayoutAlign.center,
                                                    counterAxisAlignItems:
                                                        LayoutAlign.center,
                                                    diameter: 476.0199890136719,
                                                    padding: [0, 0, 0, 0],
                                                    itemSpacing: 10,
                                                    children: [
                                                      {
                                                        26.34:
                                                            MinDiameterSupport(
                                                          orientation:
                                                              LayoutOrientation
                                                                  .vertical,
                                                          length: 26.34,
                                                          diameter: 190.14,
                                                          maximumDiameter:
                                                              476.0,
                                                          primaryAxisAlignItems:
                                                              LayoutAlign
                                                                  .center,
                                                          counterAxisAlignItems:
                                                              LayoutAlign
                                                                  .center,
                                                          child: DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: Color(
                                                                          0xFFD72A47)),
                                                              child: LayoutText(
                                                                  'Agregar al Carrito',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  idtext: 'e',
                                                                  fontSize: 24,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      height:
                                                                          1.1640211640211642))),
                                                        )
                                                      }
                                                    ],
                                                  )
                                                }
                                              ])
                                        },
                                      ).reversed.toList()),
                                ]),
                          )
                        ])
                  },
                  {
                    198.88999938964844: OrientedLayout(
                        orientation: LayoutOrientation.vertical,
                        primaryAxisAlignItems: LayoutAlign.max,
                        counterAxisAlignItems: LayoutAlign.center,
                        diameter: 1901,
                        padding: [0, 45.18000030517578, 0, 41.959999084472656],
                        itemSpacing: 10,
                        children: [
                          {
                            111.75: MinDiameterSupport(
                                diameter: 642.8099975585938,
                                length: 111.75,
                                maximumDiameter: 1901,
                                orientation: LayoutOrientation.vertical,
                                primaryAxisAlignItems: LayoutAlign.max,
                                counterAxisAlignItems: LayoutAlign.center,
                                child: OrientedLayout(
                                    orientation: LayoutOrientation.vertical,
                                    primaryAxisAlignItems: LayoutAlign.min,
                                    counterAxisAlignItems: LayoutAlign.center,
                                    diameter: 642.8099975585938,
                                    padding: [0, 0, 0, 0],
                                    itemSpacing: 9,
                                    children: [
                                      {
                                        101.75: OrientedLayout(
                                            orientation:
                                                LayoutOrientation.vertical,
                                            primaryAxisAlignItems:
                                                LayoutAlign.min,
                                            counterAxisAlignItems:
                                                LayoutAlign.center,
                                            diameter: 642.8099975585938,
                                            padding: [0, 0, 0, 0],
                                            itemSpacing: 0,
                                            children: [
                                              {
                                                21.1200008392334: LayoutText(
                                                    'ESPORTS APPAREL',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height:
                                                            1.37012987012987))
                                              },
                                              {
                                                80.62999725341797: LayoutText(
                                                  'R76 NA',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.teko(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color(0xFFFF4463),
                                                      height:
                                                          1.5822536317235965),
                                                  children: [
                                                    TextSpan(
                                                        text: ' COLLECTION',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black))
                                                  ],
                                                )
                                              }
                                            ])
                                      },
                                      {
                                        1: MinDiameterSupport(
                                            diameter: 385.69000244140625,
                                            length: 1,
                                            maximumDiameter: 642.8099975585938,
                                            orientation:
                                                LayoutOrientation.vertical,
                                            primaryAxisAlignItems:
                                                LayoutAlign.min,
                                            counterAxisAlignItems:
                                                LayoutAlign.center,
                                            child: ColoredBox(
                                              color: Colors.black,
                                            ))
                                      }
                                    ]))
                          }
                        ])
                  },
                  {
                    791.219970703125: OrientedLayout(
                        orientation: LayoutOrientation.horizontal,
                        primaryAxisAlignItems: LayoutAlign.min,
                        counterAxisAlignItems: LayoutAlign.center,
                        diameter: 791.219970703125,
                        padding: [57, 0, 57, 63.220001220703125],
                        itemSpacing: 0,
                        children: [
                          Expanded(
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  OrientedLayout(
                                      orientation: LayoutOrientation.horizontal,
                                      primaryAxisAlignItems: LayoutAlign.min,
                                      counterAxisAlignItems: LayoutAlign.min,
                                      diameter: 728,
                                      padding: [0, 0, 0, 0],
                                      itemSpacing: 10,
                                      children: List.generate(
                                        10,
                                        (e) => {
                                          476.0199890136719: OrientedLayout(
                                              orientation:
                                                  LayoutOrientation.vertical,
                                              primaryAxisAlignItems:
                                                  LayoutAlign.min,
                                              counterAxisAlignItems:
                                                  LayoutAlign.center,
                                              diameter: 476.0199890136719,
                                              padding: [0, 0, 0, 0],
                                              itemSpacing: 66,
                                              children: [
                                                {
                                                  635.6599731445312:
                                                      GestureDetector(
                                                          onTap: () {
                                                            _launchInBrowser(
                                                                Uri.parse(
                                                                    'https://c7116c-dc.myshopify.com/products/young-styled-orange-t-shirt'));
                                                          },
                                                          child: DecoratedBox(
                                                              decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: AssetImage(
                                                                          'assets/R76/product #${e + 1}.jpg'))),
                                                              child:
                                                                  OrientedLayout(
                                                                      orientation:
                                                                          LayoutOrientation
                                                                              .vertical,
                                                                      primaryAxisAlignItems:
                                                                          LayoutAlign
                                                                              .max,
                                                                      counterAxisAlignItems:
                                                                          LayoutAlign
                                                                              .min,
                                                                      diameter:
                                                                          476.0199890136719,
                                                                      padding: [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                                      itemSpacing:
                                                                          10,
                                                                      children: [
                                                                        {
                                                                          56: ColoredBox(
                                                                            color:
                                                                                Colors.white,
                                                                            child: OrientedLayout(
                                                                                orientation: LayoutOrientation.horizontal,
                                                                                primaryAxisAlignItems: LayoutAlign.center,
                                                                                counterAxisAlignItems: LayoutAlign.center,
                                                                                diameter: 56,
                                                                                padding: [0, 0, 0, 0],
                                                                                itemSpacing: 10,
                                                                                children: [
                                                                                  {
                                                                                    240: LayoutText(productNames[e], idtext: 'e\ne', maxLines: 3, style: GoogleFonts.inter(height: 1.6746987951807228))
                                                                                  }
                                                                                ]),
                                                                          )
                                                                        }
                                                                      ])))
                                                },
                                                {
                                                  26.34: OrientedLayout(
                                                    orientation:
                                                        LayoutOrientation
                                                            .vertical,
                                                    primaryAxisAlignItems:
                                                        LayoutAlign.center,
                                                    counterAxisAlignItems:
                                                        LayoutAlign.center,
                                                    diameter: 476.0199890136719,
                                                    padding: [0, 0, 0, 0],
                                                    itemSpacing: 10,
                                                    children: [
                                                      {
                                                        26.34:
                                                            MinDiameterSupport(
                                                          orientation:
                                                              LayoutOrientation
                                                                  .vertical,
                                                          length: 26.34,
                                                          diameter: 190.14,
                                                          maximumDiameter:
                                                              476.0,
                                                          primaryAxisAlignItems:
                                                              LayoutAlign
                                                                  .center,
                                                          counterAxisAlignItems:
                                                              LayoutAlign
                                                                  .center,
                                                          child: DecoratedBox(
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: Color(
                                                                          0xFFD72A47)),
                                                              child: LayoutText(
                                                                  'Agregar al Carrito',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  idtext: 'e',
                                                                  fontSize: 24,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      height:
                                                                          1.1640211640211642))),
                                                        )
                                                      }
                                                    ],
                                                  )
                                                }
                                              ])
                                        },
                                      )),
                                ]),
                          )
                        ])
                  },
                  {
                    103: ColoredBox(
                      color: Colors.black,
                      child: OrientedLayout(
                          orientation: LayoutOrientation.vertical,
                          primaryAxisAlignItems: LayoutAlign.min,
                          counterAxisAlignItems: LayoutAlign.center,
                          diameter: 1901,
                          padding: [179, 22, 179, 22],
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
                    608: ColoredBox(
                        color: Colors.black,
                        child: OrientedLayout(
                            orientation: LayoutOrientation.horizontal,
                            primaryAxisAlignItems: LayoutAlign.min,
                            counterAxisAlignItems: LayoutAlign.center,
                            diameter: 608,
                            length: 1901,
                            padding: [179, 57, 179, 57],
                            itemSpacing: 0,
                            children: [
                              Expanded(
                                  child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  OrientedLayout(
                                      orientation: LayoutOrientation.horizontal,
                                      primaryAxisAlignItems: LayoutAlign.min,
                                      counterAxisAlignItems: LayoutAlign.min,
                                      diameter: 728,
                                      padding: [0, 0, 0, 0],
                                      itemSpacing: 10,
                                      children: List.generate(
                                        10,
                                        (e) => {
                                          371: Image.asset('assets/R76/game #${((e % 4)+1) }.png')
                                        },
                                      ))
                                ],
                              ))
                            ]))
                  },
                  {
                    828.27001953125: ColoredBox(
                        color: Color(0xFF2A2829),
                        child: OrientedLayout(
                            orientation: LayoutOrientation.vertical,
                            primaryAxisAlignItems: LayoutAlign.min,
                            counterAxisAlignItems: LayoutAlign.center,
                            diameter: 1901,
                            padding: [10, 10, 10, 10],
                            itemSpacing: 10,
                            children: [
                              {
                                728.4000244140625: MinDiameterSupport(
                                    diameter: 1543,
                                    length: 728.4000244140625,
                                    maximumDiameter: 1901,
                                    orientation: LayoutOrientation.vertical,
                                    primaryAxisAlignItems: LayoutAlign.min,
                                    counterAxisAlignItems: LayoutAlign.center,
                                    child: OrientedLayout(
                                        orientation: LayoutOrientation.vertical,
                                        primaryAxisAlignItems: LayoutAlign.min,
                                        counterAxisAlignItems: LayoutAlign.min,
                                        diameter: 1543,
                                        padding: [0, 62.5, 0, 0],
                                        itemSpacing: 11,
                                        children: [
                                          {
                                            59: LayoutText('LATEST R76 VIDEOS',
                                                style: GoogleFonts.teko(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white,
                                                    height: 1.619099890230516))
                                          },
                                          {
                                            595.9000244140625: OrientedLayout(
                                                orientation:
                                                    LayoutOrientation.vertical,
                                                primaryAxisAlignItems:
                                                    LayoutAlign.min,
                                                counterAxisAlignItems:
                                                    LayoutAlign.min,
                                                diameter: 1543,
                                                padding: [0, 0, 0, 0],
                                                itemSpacing: 23,
                                                children: [
                                                  {
                                                    286.45001220703125:
                                                        OrientedLayout(
                                                            orientation:
                                                                LayoutOrientation
                                                                    .horizontal,
                                                            primaryAxisAlignItems:
                                                                LayoutAlign.min,
                                                            counterAxisAlignItems:
                                                                LayoutAlign
                                                                    .center,
                                                            diameter:
                                                                286.45001220703125,
                                                            padding: [
                                                              0,
                                                              0,
                                                              0,
                                                              0
                                                            ],
                                                            itemSpacing: 11,
                                                            children: [
                                                              {
                                                                507: YTVideo(
                                                                  viewID:
                                                                      'my-first-video',
                                                                  url:
                                                                      'https://www.youtube.com/embed/DDBjk-r4urY',
                                                                )
                                                              },
                                                              {
                                                                507: YTVideo(
                                                                  viewID:
                                                                      'my-second-video',
                                                                  url:
                                                                      'https://www.youtube.com/embed/dr4SympuojM',
                                                                )
                                                              },
                                                              {
                                                                507: YTVideo(
                                                                  viewID:
                                                                      'my-third-video',
                                                                  url:
                                                                      'https://www.youtube.com/embed/bzVTONHA5h4',
                                                                )
                                                              }
                                                            ])
                                                  },
                                                  {
                                                    286.45001220703125:
                                                        OrientedLayout(
                                                            orientation:
                                                                LayoutOrientation
                                                                    .horizontal,
                                                            primaryAxisAlignItems:
                                                                LayoutAlign.min,
                                                            counterAxisAlignItems:
                                                                LayoutAlign
                                                                    .center,
                                                            diameter:
                                                                286.45001220703125,
                                                            padding: [
                                                              0,
                                                              0,
                                                              0,
                                                              0
                                                            ],
                                                            itemSpacing: 11,
                                                            children: [
                                                              {
                                                                507: YTVideo(
                                                                  viewID:
                                                                      'my-queart-video',
                                                                  url:
                                                                      'https://www.youtube.com/embed/uaDQB8lOlTk',
                                                                )
                                                              },
                                                              {
                                                                507: YTVideo(
                                                                  viewID:
                                                                      'my-fith-video',
                                                                  url:
                                                                      'https://www.youtube.com/embed/L8Za9xjMg84',
                                                                )
                                                              },
                                                              {
                                                                507: YTVideo(
                                                                  viewID:
                                                                      'my-sixth-video',
                                                                  url:
                                                                      'https://www.youtube.com/embed/rGHe90rmEpw',
                                                                )
                                                              }
                                                            ])
                                                  }
                                                ])
                                          }
                                        ]))
                              }
                            ]))
                  },
                  {
                    99.5199966430664: ColoredBox(
                      color: Color(0xFFD72A47),
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
                                                      style: GoogleFonts.inter(
                                                          color: Colors.white))
                                                ])
                                          },
                                          {
                                            153.69000244140625: OrientedLayout(
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
                                                  LayoutText(
                                                      'Comcast Spectacor',
                                                      style: GoogleFonts.inter(
                                                          color: Colors.white))
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
                                        counterAxisAlignItems: LayoutAlign.max,
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
          ]),
    );
  }
}

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
          )
        ],
      ),
    );
  }
}

class LandscapeHomepage extends StatefulWidget {
  const LandscapeHomepage({super.key});

  @override
  State<LandscapeHomepage> createState() => _LandscapeHomepageState();
}
