import 'package:flutter/material.dart';

class DisplayImage extends StatelessWidget {
  const DisplayImage({
    Key? key,
    required this.path,
  }) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: FadeInImage(
        image: NetworkImage(path, scale: 1),
        fit: BoxFit.fill,
        placeholder: AssetImage('assets/loading.gif'),
        placeholderFit: BoxFit.fill,
        imageErrorBuilder:
            (BuildContext context, Object exception, StackTrace? stackTrace) {
          return const Image(
            image: AssetImage('assets/noimage.jpg'),
            height: 100,
            width: double.infinity,
            fit: BoxFit.fill,
          );
        },
      ),
    );
  }
}
