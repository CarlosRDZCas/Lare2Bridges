import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lare2bridges/src/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../provider/providers.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imgprovider = Provider.of<ImageProv>(context);
    Timer.periodic(
        const Duration(seconds: 60), (Timer t) => imgprovider.reload());
    return Table(
      children: [
        TableRow(children: [
          SingleCard(
              path: imgprovider.path1Mex,
              nombre: 'Puente Internacional #1 USA Side'),
          SingleCard(
              path: imgprovider.path1USA,
              nombre: 'Puente Internacional #1 Mexico Side'),
        ]),
        TableRow(children: [
          SingleCard(
              path: imgprovider.path2USA,
              nombre: 'Puente Internacional #2 USA Side'),
          SingleCard(
              path: imgprovider.path2Mex,
              nombre: 'Puente Internacional #2 Mexico Side'),
        ]),
        TableRow(children: [
          SingleCard(
              path: imgprovider.path3USA,
              nombre: 'Puente Internacional #3 USA Side'),
          SingleCard(
              path: imgprovider.path3Mex,
              nombre: 'Puente Internacional #3 Mexico Side'),
        ]),
        TableRow(children: [
          SingleCard(
              path: imgprovider.path4USA,
              nombre: 'Puente Internacional #4 USA Side'),
          SingleCard(
              path: imgprovider.path4Mex,
              nombre: 'Puente Internacional #4 Mexico Side'),
        ])
      ],
    );
  }
}
