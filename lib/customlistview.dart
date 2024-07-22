import 'package:flutter/material.dart';
import 'package:sr_flutter/setup/layout.dart';
import 'package:sr_flutter/setup/mobile_constants.dart';

enum ComponentType { preferredsized, proportionchild }

class LazyLoadDifferentComponents extends StatelessWidget {
  // Define an enum for your component types
  LazyLoadDifferentComponents({
    super.key,
    this.items = const [
      ComponentType.preferredsized,
      ComponentType.proportionchild,
      ComponentType.proportionchild,
      ComponentType.proportionchild,
      ComponentType.proportionchild,
      ComponentType.proportionchild,
      ComponentType.proportionchild,
      ComponentType.proportionchild,
      ComponentType.proportionchild,
      ComponentType.proportionchild,
      ComponentType.proportionchild,
      ComponentType.proportionchild,
    ],
    this.orientation = LayoutOrientation.vertical,
    required this.diameter,
    required this.children,
    required this.scrollController,
    required this.physics,
  });

  // Create a list of component types
  final List<ComponentType> items;
  final List<dynamic> children;
  final LayoutOrientation orientation;
  final num diameter;
  final ScrollController scrollController;
  final ScrollPhysics physics;
  List<Widget>? _children;

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.sizeOf(context).width;
    final double h = MediaQuery.sizeOf(context).height;

    _children ??= children.map((e) {
        switch (items[children.indexOf(e)]) {
          case ComponentType.preferredsized:
            return ConstraintsLoaderWidget(
                orientation: orientation,
                diameter: diameter,
                w: w,
                h: h,
                item: {0.0001: antiwhite});
          case ComponentType.proportionchild:
            var item = (children[children.indexOf(e)] as Map);
            return ConstraintsLoaderWidget(
                w: w,
                h: h,
                orientation: orientation,
                diameter: diameter,
                item: item);
        }
      }).toList();

    return ListView(
      controller: scrollController,
      physics: physics,
      shrinkWrap: true,
      addAutomaticKeepAlives: true,
      children: _children!,
    );
  }
}

class ConstraintsLoaderWidget extends StatelessWidget {
  const ConstraintsLoaderWidget({
    super.key,
    required this.orientation,
    required this.diameter,
    required this.item,
    required this.w,
    required this.h,
  });

  final LayoutOrientation orientation;
  final num diameter;
  final Map item;
  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: orientation == LayoutOrientation.vertical
          ? w * (item.keys.first / diameter)
          : null,
      width: orientation == LayoutOrientation.vertical
          ? h * (diameter / item.keys.first)
          : null,
      child: item.values.first,
    );
  }
}
