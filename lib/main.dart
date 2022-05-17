import 'package:flutter/material.dart';
import 'package:lare2bridges/src/provider/providers.dart';

import 'package:lare2bridges/src/routes/routes.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ImageProv())],
      child: MaterialApp(
        title: 'Lare2Bridges',
        debugShowCheckedModeBanner: false,
        initialRoute: "home",
        onGenerateRoute: getRoutes(),
      ),
    );
  }
}
