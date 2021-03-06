// @dart=2.9

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String url;
  final double circularRadius;
  final double width;
  final double height;
  final bool withBorder;
  final bool isGrayscale;

  RoundedImage({
    Key key,
    @required this.url,
    this.circularRadius = 50,
    this.width = 50,
    this.height = 50,
    this.withBorder = false,
    this.isGrayscale = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: this.withBorder ? EdgeInsets.all(1.5) : null,
      decoration: BoxDecoration(
          border: Border.all(
              color: this.withBorder ? Theme.of(context).colorScheme.secondary : Colors.transparent,
              width: 1.5),
          borderRadius: BorderRadius.circular(circularRadius)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(circularRadius),
        child: Builder(
          builder: (BuildContext context) {
            var cachedNetworkImage = CachedNetworkImage(
              imageUrl: url,
              width: width,
              height: height,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) => Icon(Icons.error),
            );

            return isGrayscale
                ? ColorFiltered(
                    colorFilter: ColorFilter.mode(Colors.grey, BlendMode.saturation),
                    child: cachedNetworkImage,
                  )
                : cachedNetworkImage;
          },
        ),
      ),
    );
  }
}
