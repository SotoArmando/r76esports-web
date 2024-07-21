import 'package:flutter/material.dart';

import 'dart:html' as html;
// import 'dart:js' as js;
import 'dart:ui_web' as ui;

class YTVideo extends StatelessWidget {
  const YTVideo(
      {super.key,
      this.url = 'https://www.youtube.com/embed/IyFZznAk69U',
      this.viewID = "your-view-id"});

  final String viewID;
  final String url;

  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        viewID,
        (int id) => html.IFrameElement()
          ..width = MediaQuery.of(context).size.width.toString()
          ..height = MediaQuery.of(context).size.height.toString()
          ..src = url
          ..style.border = 'none');

    return HtmlElementView(
        viewType: viewID,
      );
  }
}
