import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:sr_flutter/setup/mobile_constants.dart';

const num defaultScreenWidth = 485;
const num defaultScreenHeight = 862.22;

FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;

Size size = view.physicalSize / view.devicePixelRatio;

List addSpacing(List originalList, num no, num defaultDiameter,
    LayoutOrientation orientation) {
  List modifiedList = []; // Empty array to store modified elements
  if (no > 0) {
    for (int i = 0; i < originalList.length; i++) {
      // Add the original element

      if (i > 0) {
        // If the index is odd
        modifiedList.add(AspectRatio(
          aspectRatio: orientation == LayoutOrientation.vertical
              ? defaultDiameter / no
              : no / defaultDiameter,
          child: orientation == LayoutOrientation.vertical
              ? antiwhite
              : antiwhiteVertical,
        )); // Insert the element at odd position, here 0 is inserted
      }
      modifiedList.add(originalList[i]);
    }
    return (modifiedList);
  } else {
    return originalList;
  }
}

class Turner {
  final BuildContext context;

  Turner(this.context);

  double WidthProp(num no) {
    final double width = MediaQuery.of(context).size.width;
    return no / width;
    // return no / width;
  }

  double HeighProp(num no) {
    double height = MediaQuery.of(context).size.height;
    return no / height;
  }

  num WidthasProportioned(num no) {
    return ((WidthProp(no)) * defaultScreenWidth);
  }

  num HeightasProportioned(num no) {
    return (HeighProp(no)) * defaultScreenHeight;
  }
}

class ProportionsColumn extends StatefulWidget {
  final List<dynamic> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final num spacing;
  final bool constraintToMinDiameter;
  final List<num> padding;
  final num defaultDiameter;
  final bool debug;
  final bool containerIsFamily;

  const ProportionsColumn(
      {super.key,
      required this.defaultDiameter,
      this.padding = const [0, 0, 0, 0],
      required this.children,
      this.spacing = 0,
      this.containerIsFamily = false,
      this.debug = false,
      this.constraintToMinDiameter = false,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.crossAxisAlignment = CrossAxisAlignment.center});

  @override
  State<ProportionsColumn> createState() => _ProportionsColumnState();
}

class _ProportionsColumnState extends State<ProportionsColumn> {
  final num missingspace = 0;
  final GlobalKey _keyColumn = GlobalKey();

  double _emptySpace = 1;
  num height = 0;

  @override
  void initState() {
    super.initState();
    // Wait for the frame to render and then get the sizes
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => Future.delayed(const Duration(milliseconds: 10), () {
              _calculateEmptySpace(_);
            }));
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

  void _calculateEmptySpace(d) async {
    await rebuild();
    try {
      final RenderBox renderBoxColumn =
          _keyColumn.currentContext!.findRenderObject()! as RenderBox;
      final columnHeight = renderBoxColumn.size.height;

      double totalChildrenHeight = 0;

      // Measure the height of each child
      renderBoxColumn.visitChildren((RenderObject child) {
        if (child is RenderBox) {
          if (widget.debug) {
            // print("child.size.height ${child.size.height}");
          }
          totalChildrenHeight += child.size.height;
        }
      });
      final m = columnHeight - totalChildrenHeight;
      final a = (m * height) / columnHeight;

      if (widget.debug) {
        // print('totalChildrenHeight $totalChildrenHeight');
        // print('columnHeight $columnHeight');
        // print('_emptySpace ${columnHeight / totalChildrenHeight}');
      }
      setState(() {
        _emptySpace = columnHeight / totalChildrenHeight;
      });
    } catch (e) {}
  }

  Widget wrapper({required Widget body}) {
    height = 0;
    if (widget.spacing > 0) {
      height += (widget.children.length - 1) * widget.spacing;
    }
    for (var e in widget.children) {
      if (e is! Widget) {
        if (e is int || e is num || e is double) {
          height += e;
        } else {
          var x = Map<num, dynamic>.from(e);
          height += x.keys.reduce((value, element) => value + element);
        }
      } else {
        height += 1000;
      }
    }
    if (widget.constraintToMinDiameter) {
      var d = height / _emptySpace;

      if (widget.debug) {
        // print("height $height");
        // print("_emptySpace $_emptySpace");
        // print("result ${height - _emptySpace}");
      }

      // if (widget.containerIsFamily) {
      //   return {
      //     (d <= 0 ? height : d): body
      //   };
      // }
      return AspectRatio(
          aspectRatio: widget.defaultDiameter / (d <= 0 ? height : d),
          child: body);
    }
    return body;
  }

  @override
  Widget build(BuildContext context) {
    bool measureWidth = widget.defaultDiameter != null;
    final defaultDiameter =
        widget.defaultDiameter - (widget.padding[0] + widget.padding[2]);

    var cast = widget.children
        .map((e) => e is Widget
            ? e
            : ((e is Map<dynamic, dynamic>)
                ? Column(
                    mainAxisAlignment: widget.mainAxisAlignment,
                    crossAxisAlignment: widget.crossAxisAlignment,
                    children: e.entries
                        .map((ent) {
                          return AspectRatio(
                            aspectRatio: measureWidth
                                ? (defaultDiameter / ent.key)
                                : ent.key,
                            child: ent.value,
                          );
                        })
                        .toList()
                        .cast<Widget>(),
                  )
                : AspectRatio(
                    aspectRatio: measureWidth ? (defaultDiameter / e) : e)))
        .toList()
        .cast<Widget>();

    return wrapper(
      body: LayoutBuilder(
        key: ValueKey(_emptySpace),
        builder: (context, bc) {
          var t = Turner(context);
          var paddingLeft = widget.padding[0] > 0
              ? AspectRatio(
                  aspectRatio: widget.padding[0] /
                      t.HeightasProportioned(bc.biggest.height),
                  child: antiwhiteVertical,
                )
              : const SizedBox();

          var paddingRight = widget.padding[2] > 0
              ? AspectRatio(
                  aspectRatio: widget.padding[2] /
                      t.HeightasProportioned(bc.biggest.height),
                  child: antiwhiteVertical,
                )
              : const SizedBox();

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              paddingLeft,
              Expanded(
                  child: LayoutBuilder(
                key: ValueKey(_emptySpace),
                builder: (c, innerbc) {
                  var paddingTop = widget.padding[1] > 0
                      ? AspectRatio(
                          aspectRatio: defaultDiameter / widget.padding[1])
                      : const SizedBox();
                  var paddingBottom = widget.padding[3] > 0
                      ? AspectRatio(
                          aspectRatio: defaultDiameter / widget.padding[3])
                      : const SizedBox();

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      paddingTop,
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          key: _keyColumn,
                          mainAxisAlignment: widget.mainAxisAlignment,
                          crossAxisAlignment: widget.crossAxisAlignment,
                          children: [
                            ...addSpacing(cast, widget.spacing, defaultDiameter,
                                LayoutOrientation.vertical),
                          ],
                        ),
                      ),
                      paddingBottom
                    ],
                  );
                },
              )),
              paddingRight,
            ],
          );
        },
      ),
    );
  }
}

class ProportionsRow extends StatelessWidget {
  final List<dynamic> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final num spacing;
  final List<num> padding;
  final num defaultDiameter;
  final num length;
  const ProportionsRow(
      {super.key,
      required this.defaultDiameter,
      required this.children,
      this.spacing = 0,
      this.length = 0,
      this.padding = const [0, 0, 0, 0],
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.crossAxisAlignment = CrossAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    bool measureHeight = defaultDiameter != null;

    final realDiameter = defaultDiameter - (padding[1] + padding[3]);

    var cast = children
        .map((e) => e is Widget
            ? e
            : ((e is Map<dynamic, dynamic>)
                ? Row(
                    children: e.entries
                        .map((ent) => AspectRatio(
                              aspectRatio: measureHeight
                                  ? (ent.key / realDiameter)
                                  : ent.key,
                              child: ent.value,
                            ))
                        .toList()
                        .cast<Widget>(),
                  )
                : AspectRatio(
                    aspectRatio: measureHeight ? (e / realDiameter) : e)))
        .toList()
        .cast<Widget>();

    return LayoutBuilder(
      builder: (context, bc) {
        var t = Turner(context);
        return verticalPadding(padding, bc, LayoutBuilder(
          builder: (c, innerbc) {
            return horizontalPadding(
                padding,
                innerbc,
                Row(
                  mainAxisAlignment: mainAxisAlignment,
                  crossAxisAlignment: crossAxisAlignment,
                  children: [
                    ...addSpacing(cast, spacing, realDiameter,
                        LayoutOrientation.horizontal),
                  ],
                ),
                t);
          },
        ), t);
      },
    );
  }

  Widget verticalPadding(
      List<num> padding, BoxConstraints bc, Widget child, Turner t) {
        
    final paddingTop = padding[1] > 0
        ? AspectRatio(
            aspectRatio: (length > 0
                    ? length
                    : t.WidthasProportioned(bc.biggest.width)) /
                padding[1],
            child: antiwhite)
        : const SizedBox();
    final paddingBottom = padding[3] > 0
        ? AspectRatio(
            aspectRatio: (length > 0
                    ? length
                    : t.WidthasProportioned(bc.biggest.width)) /
                padding[3],
            child: antiwhite)
        : const SizedBox();

    bool noPaddingTop = paddingTop.runtimeType == const SizedBox().runtimeType;
    bool noPaddingBottom =
        paddingBottom.runtimeType == const SizedBox().runtimeType;

    return noPaddingTop && noPaddingBottom
        ? child
        : Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              paddingTop,
              Expanded(child: child),
              paddingBottom,
            ],
          );
  }

  Widget horizontalPadding(
      List<num> padding, BoxConstraints innerbc, Row row, Turner t) {
    final realDiameter = defaultDiameter - (padding[1] + padding[3]);

    final paddingLeft = padding[0] > 0
        ? AspectRatio(
            aspectRatio: padding[0] / realDiameter,
            child: antiwhiteVertical,
          )
        : const SizedBox();

    final paddingRigth = padding[2] > 0
        ? AspectRatio(
            aspectRatio: padding[2] / realDiameter,
            child: antiwhiteVertical,
          )
        : const SizedBox();

    bool noPaddingLeft =
        paddingLeft.runtimeType == const SizedBox().runtimeType;
    bool noPaddingRight =
        paddingRigth.runtimeType == const SizedBox().runtimeType;

    return noPaddingLeft && noPaddingRight
        ? row
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              paddingLeft,
              Expanded(
                child: row,
              ),
              paddingRigth,
            ],
          );
  }
}

enum LayoutOrientation { horizontal, vertical }

enum LayoutAlign { min, max, space_between, center, stretch }

class OrientedLayout extends StatelessWidget {
  final LayoutOrientation orientation;
  final LayoutAlign primaryAxisAlignItems;
  final LayoutAlign counterAxisAlignItems;
  final num diameter;
  final num length;
  final num itemSpacing;
  final bool constraintToMinDiameter;
  final bool debug;
  final List<num> padding;
  final List<dynamic> children;
  final bool containerIsFamily;

  MainAxisAlignment tomainAxisAlignment(LayoutAlign align) {
    return {
      LayoutAlign.center: MainAxisAlignment.center,
      LayoutAlign.max: MainAxisAlignment.end,
      LayoutAlign.min: MainAxisAlignment.start,
      LayoutAlign.space_between: MainAxisAlignment.spaceBetween,
      LayoutAlign.stretch: MainAxisAlignment.center,
    }[align]!;
  }

  CrossAxisAlignment tocrossAxisAlignment(LayoutAlign align) {
    return {
      LayoutAlign.center: CrossAxisAlignment.center,
      LayoutAlign.max: CrossAxisAlignment.end,
      LayoutAlign.min: CrossAxisAlignment.start,
      LayoutAlign.space_between: CrossAxisAlignment.stretch,
      LayoutAlign.stretch: CrossAxisAlignment.center,
    }[align]!;
  }

  const OrientedLayout(
      {super.key,
      required this.orientation,
      this.itemSpacing = 0,
      this.length = 0,
      required this.children,
      this.debug = false,
      this.containerIsFamily = false,
      this.constraintToMinDiameter = false,
      this.primaryAxisAlignItems = LayoutAlign.min,
      this.counterAxisAlignItems = LayoutAlign.min,
      required this.diameter,
      this.padding = const [0, 0, 0, 0]});

  @override
  Widget build(BuildContext context) => switch (orientation) {
        (LayoutOrientation.horizontal) => ProportionsRow(
            mainAxisAlignment: tomainAxisAlignment(primaryAxisAlignItems),
            crossAxisAlignment: tocrossAxisAlignment(counterAxisAlignItems),
            spacing: itemSpacing,
            length: length,
            defaultDiameter: diameter,
            padding: padding,
            children: children),
        (LayoutOrientation.vertical) => ProportionsColumn(
            mainAxisAlignment: tomainAxisAlignment(primaryAxisAlignItems),
            constraintToMinDiameter: constraintToMinDiameter,
            containerIsFamily: containerIsFamily,
            debug: debug,
            crossAxisAlignment: tocrossAxisAlignment(counterAxisAlignItems),
            spacing: itemSpacing,
            defaultDiameter: diameter,
            padding: padding,
            children: children)
      };
}

class MinDiameterSupport extends StatelessWidget {
  final LayoutOrientation orientation;
  final LayoutAlign primaryAxisAlignItems;
  final LayoutAlign counterAxisAlignItems;
  final num diameter;
  final num maximumDiameter;
  final List<num?>? padding;
  final Widget child;
  final num length;

  const MinDiameterSupport(
      {super.key,
      required this.orientation,
      this.primaryAxisAlignItems = LayoutAlign.min,
      this.counterAxisAlignItems = LayoutAlign.min,
      required this.diameter,
      required this.length,
      required this.maximumDiameter,
      required this.child,
      this.padding});

  Alignment layoutAlignToAlign(LayoutAlign x, LayoutAlign y) {
    Map<LayoutAlign, double> a = {
      LayoutAlign.min: -1.0,
      LayoutAlign.center: 0.0,
      LayoutAlign.max: 1.0,
      LayoutAlign.space_between: 0.0,
      LayoutAlign.stretch: 0.0,
    };

    return orientation == LayoutOrientation.horizontal
        ? Alignment(a[x]!, a[y]!)
        : Alignment(a[y]!, a[x]!);
  }

  @override
  Widget build(BuildContext context) => switch (orientation) {
        (LayoutOrientation.horizontal) => AspectRatio(
            aspectRatio: length /
                (maximumDiameter - ((padding?[1] ?? 0) + (padding?[3] ?? 0))),
            child: Align(
              alignment: layoutAlignToAlign(
                  primaryAxisAlignItems, counterAxisAlignItems),
              child: AspectRatio(
                aspectRatio: length / diameter,
                child: child,
              ),
            ),
          ),
        (LayoutOrientation.vertical) => AspectRatio(
            aspectRatio:
                (maximumDiameter - ((padding?[0] ?? 0) + (padding?[2] ?? 0))) /
                    length,
            child: Align(
              alignment: layoutAlignToAlign(
                  primaryAxisAlignItems, counterAxisAlignItems),
              child: AspectRatio(
                aspectRatio: diameter / length,
                child: child,
              ),
            ),
          )
      };
}
