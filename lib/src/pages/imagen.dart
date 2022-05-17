import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/providers.dart';

class ImagenScreen extends StatelessWidget {
  const ImagenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataimg = Provider.of<ImageProv>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Center(
          child: Text(
            dataimg.nombre,
            style: const TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.only(bottom: 16),
          height: double.infinity,
          width: double.infinity,
          child: FadeInImage(
            image: NetworkImage(dataimg.path),
            fit: BoxFit.fill,
            placeholder: AssetImage('assets/loading.gif'),
            imageErrorBuilder: (BuildContext context, Object exception,
                StackTrace? stacktrace) {
              return const Image(
                image: AssetImage('assets/noimage.jpg'),
                height: 100,
                width: double.infinity,
                fit: BoxFit.fill,
              );
            },
          )),
    );
  }
}
