import 'package:flutter/cupertino.dart';
import '../pages/pages.dart';

getRoutes() {
  return (RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return CupertinoPageRoute(
            builder: (_) => const HomePage(), settings: settings);
      case 'imagen':
        return CupertinoPageRoute(
            builder: (_) =>  const ImagenScreen(), settings: settings);
    }
  };
}
