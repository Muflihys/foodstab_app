import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

<<<<<<< HEAD
class ImageViewerHelper {
  ImageViewerHelper._();

  static show(
      {required BuildContext context,
      required String url,
      BoxFit? fit,
      double? radius}) {
=======

class ImageViewerHelper {
  ImageViewerHelper._();

static show({
  required BuildContext context,
  required String url, 
  BoxFit? fit,
  double? radius}) {
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
    return CachedNetworkImage(
      imageUrl: url,
      fit: fit ?? BoxFit.cover,
      imageBuilder: (context, ImageProvider) {
        return Container(
          decoration: BoxDecoration(
<<<<<<< HEAD
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(radius ?? 8),
              image: DecorationImage(
                image: ImageProvider,
                fit: fit ?? BoxFit.cover,
              )),
        );
      },
      placeholder: (context, url) => Container(),
      errorWidget: (context, url, error) =>
          const Icon(Icons.error_outline_outlined),
    );
  }
}
=======
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(radius ?? 8),
            image: DecorationImage(
              image: ImageProvider,
              fit: fit ?? BoxFit.cover,
            )
          ),
        );
      },
      placeholder: (context, url) => Container(),
      errorWidget: (context, url, error) => 
      Icon(Icons.error_outline_outlined),
    );
  }
}
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
