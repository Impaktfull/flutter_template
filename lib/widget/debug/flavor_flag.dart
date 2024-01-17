import 'package:flutter/material.dart';
import 'package:flutter_template/util/flavor/flavor_config.dart';

class FlavorBanner extends StatelessWidget {
  final Widget child;

  const FlavorBanner({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(
        location: BannerLocation.topStart,
        message: FlavorConfig.instance.flavor.name,
        color: FlavorConfig.instance.flavor.color,
        child: child,
      ),
    );
  }
}
