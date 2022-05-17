import 'package:flutter/material.dart';
import 'package:lare2bridges/src/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../provider/providers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imgprov = Provider.of<ImageProv>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Puentes Internacionales",
            style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.9)),
              child: const SingleChildScrollView(
                child: CardTable(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
