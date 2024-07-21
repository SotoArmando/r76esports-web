import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sr_flutter/button/button0.dart';
import 'package:sr_flutter/setup/layout.dart';
import 'package:sr_flutter/setup/layout_text.dart';
import 'package:url_launcher/url_launcher.dart';

class R76Appbar extends StatefulWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final void Function() prepareForRoute;
  const R76Appbar(
      {super.key,
      required this.width,
      required this.prepareForRoute,
      required this.preferredSize});

  final double width;

  @override
  State<R76Appbar> createState() => _R76AppbarState();
}

class _R76AppbarState extends State<R76Appbar> {
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

  Future<bool> rebuild() async {
    if (!mounted) return false;

    // if there's a current frame,
    if (SchedulerBinding.instance.schedulerPhase != SchedulerPhase.idle) {
      // wait for the end of that frame.
      await SchedulerBinding.instance.endOfFrame;
      if (!mounted) return false;
    }

    setState(() {});
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black,
      child: AspectRatio(
        aspectRatio: 1901 / 83.63999938964844,
        child: OrientedLayout(
            orientation: LayoutOrientation.horizontal,
            primaryAxisAlignItems: LayoutAlign.space_between,
            counterAxisAlignItems: LayoutAlign.min,
            diameter: 83.63999938964844,
            length: 1901,
            padding: [198.75999450683594, 22, 179, 22],
            itemSpacing: 0,
            children: [
              // { 30: LayoutText('asd',idtext: 'e', style: TextStyle(color: Colors.red),)}
              {
                52.36893844604492 * 1.3878743961352658:
                    Image.asset('assets/R76/R76.png')
              },
              {
                601.1400146484375 + 22: MinDiameterSupport(
                    diameter: 24.610000610351562,
                    length: 601.1400146484375 + 22,
                    maximumDiameter: 83.63999938964844,
                    orientation: LayoutOrientation.horizontal,
                    primaryAxisAlignItems: LayoutAlign.space_between,
                    counterAxisAlignItems: LayoutAlign.center,
                    child: OrientedLayout(
                        orientation: LayoutOrientation.horizontal,
                        primaryAxisAlignItems: LayoutAlign.min,
                        counterAxisAlignItems: LayoutAlign.center,
                        diameter: 24.610000610351562,
                        padding: [0, 0, 0, 0],
                        itemSpacing: 31,
                        children: [
                          {
                            600: MinDiameterSupport(
                                diameter: 24,
                                length: 600,
                                maximumDiameter: 24.610000610351562,
                                orientation: LayoutOrientation.horizontal,
                                primaryAxisAlignItems: LayoutAlign.max,
                                counterAxisAlignItems: LayoutAlign.center,
                                child: OrientedLayout(
                                    orientation: LayoutOrientation.horizontal,
                                    primaryAxisAlignItems: LayoutAlign.max,
                                    counterAxisAlignItems: LayoutAlign.center,
                                    diameter: 24,
                                    padding: [0, 1, 0, 1],
                                    length: 470,
                                    itemSpacing: 25,
                                    children: [
                                      GestureDetector(
                                          onTapUp: (_) async {
                                            widget.prepareForRoute();
                                            await Future.delayed(Duration(milliseconds: 25));
                                            context.go('/');
                                          },
                                          child: Button0(
                                            label: 'El Equipo',
                                          )),
                                      GestureDetector(
                                        onTapUp: (_) async {
                                          widget.prepareForRoute();
                                          await Future.delayed(Duration(milliseconds: 25));
                                          context.go('/comunidad');
                                        },
                                        child: Button0(
                                          label: 'Comunidad',
                                        ),
                                      ),
                                      GestureDetector(
                                          onTapUp: (_) => _launchInBrowser(
                                              Uri.parse(
                                                  'https://c7116c-dc.myshopify.com/')),
                                          child: Button0(
                                            label: 'Store',
                                          )),
                                      Button0(
                                        label: 'Up next',
                                      ),
                                      GestureDetector(
                                          onTapUp: (_) async {
                                            widget.prepareForRoute();
                                            await Future.delayed(Duration(milliseconds: 25));
                                            context.go('/R76');
                                          },
                                          child: Button0(
                                            label: 'R76',
                                          )),
                                      Button0(
                                        label: 'Sponsors',
                                      ),
                                    ]))
                          },
                          {
                            100.13999938964844: OrientedLayout(
                                orientation: LayoutOrientation.horizontal,
                                primaryAxisAlignItems: LayoutAlign.center,
                                counterAxisAlignItems: LayoutAlign.center,
                                length: 100.13999938964844,
                                diameter: 24.610000610351562,
                                padding: [
                                  0,
                                  1.690000057220459,
                                  0,
                                  1.799999713897705
                                ],
                                itemSpacing: 0,
                                children: [
                                  {20: Image.asset('assets/sr/SVG.png')},
                                  8,
                                  LayoutText('English',
                                      idtext: 'e',
                                      style: GoogleFonts.nunitoSans(
                                          color: Colors.white,
                                          height: 1.3000616142945163)),
                                  8.13,
                                  {
                                    8.03000545501709: MinDiameterSupport(
                                        diameter: 8.03000545501709,
                                        length: 8.03000545501709,
                                        maximumDiameter: 24.610000610351562,
                                        orientation:
                                            LayoutOrientation.horizontal,
                                        primaryAxisAlignItems:
                                            LayoutAlign.center,
                                        counterAxisAlignItems:
                                            LayoutAlign.center,
                                        child:
                                            Image.asset('assets/sr/Border.png'))
                                  }
                                ])
                          }
                        ]))
              }
            ]),
      ),
    );
  }
}
