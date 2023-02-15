import 'package:flutter/material.dart';
import 'package:my_social_media/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget WebScreenLayout;
  final Widget MobScreenLayout;
  const ResponsiveLayout(
      {super.key,
      required this.MobScreenLayout,
      required this.WebScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > screenSize) {
        return WebScreenLayout;
      } else {
        return MobScreenLayout;
      }
    });
  }
}
