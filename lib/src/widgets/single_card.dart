import 'package:flutter/material.dart';

import 'package:lare2bridges/src/provider/providers.dart';
import 'package:lare2bridges/src/widgets/widgets.dart';
import 'package:provider/provider.dart';

class SingleCard extends StatelessWidget {
  const SingleCard({Key? key, required this.path, required this.nombre})
      : super(key: key);
  final String path;
  final String nombre;

  @override
  Widget build(BuildContext context) {
    final dataimg = Provider.of<ImageProv>(context);

    return GestureDetector(
      onTap: () async {
        dataimg.path = path;
        dataimg.nombre = nombre;
        Navigator.pushNamed(context, 'imagen');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(60, 60, 60, 1),
        ),
        margin: const EdgeInsets.all(12),
        height: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: DisplayImage(path: path)),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                nombre,
                style: const TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
