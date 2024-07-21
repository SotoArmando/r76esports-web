import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sr_flutter/setup/layout.dart';
import 'package:sr_flutter/setup/layout_text.dart';

class Button0 extends StatefulWidget {
  final label;

  const Button0({super.key, this.label = 'El Equipo'});
  @override
  State<Button0> createState() => _Button0State();
}

class _Button0State extends State<Button0> with TickerProviderStateMixin {
  bool showButton = false;

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
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.passthrough,
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 200),
              reverseDuration: Duration(milliseconds: 25),
              switchInCurve: Easing.legacyAccelerate,
              switchOutCurve: Easing.legacyDecelerate,
              transitionBuilder: (child, anim) {
                return FadeTransition(
                  opacity: anim,
                  child: child,
                );
              },
              child: LayoutText(widget.label,
                  idtext: 'e',
                  key: ValueKey(showButton),
                  style: GoogleFonts.nunitoSans(
                      color: showButton ? Color(0xFFD72A47) : Colors.white,
                      shadows: [BoxShadow(color: showButton ? Color(0xFFD72A47) : Colors.transparent, blurRadius:0.1, spreadRadius: 3)],
                      height: 1.3000616142945163)),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: LayoutBuilder(
                    builder: (context, constraints) => Transform.translate(
                          offset: Offset(0.5, 9.75),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Easing.emphasizedDecelerate,
                            width: showButton ? constraints.biggest.width : 0,
                            height: 2.25,
                            color:
                                showButton ? Color(0xFFD72A47) : Colors.white,
                            constraints: BoxConstraints(maxHeight: 2.25),
                          ),
                        )),
              ),
            ),
          ],
        ));
  }
}
