import 'package:flutter/material.dart';

class ImageProv extends ChangeNotifier {
  String nombre = '';
  String path = '';

  String path1Mex =
      'https://www.cityoflaredo.com/bridge/BridgeCameras/bridge1MEX.jpg';
  String path1USA =
      'https://www.cityoflaredo.com/bridge/BridgeCameras/bridge1US.jpg';
  String path2Mex =
      'https://www.cityoflaredo.com/bridge/BridgeCameras/bridge2MEX.jpg';
  String path2USA =
      'https://www.cityoflaredo.com/bridge/BridgeCameras/bridge2US.jpg';
  String path3Mex =
      'https://www.cityoflaredo.com/bridge/BridgeCameras/bridge3MEX.jpg';
  String path3USA =
      'https://www.cityoflaredo.com/bridge/BridgeCameras/bridge3US.jpg';
  String path4Mex =
      'https://www.cityoflaredo.com/bridge/BridgeCameras/bridge4US.jpg';
  String path4USA =
      'https://www.cityoflaredo.com/bridge/BridgeCameras/bridge4USTOLL.jpg';

  Future<void> reload() async {
    path1Mex = path1Mex + "?v=${DateTime.now().microsecond}";
    path1USA = path1USA + "?v=${DateTime.now().microsecond}";
    path2Mex = path2Mex + "?v=${DateTime.now().microsecond}";
    path2USA = path2USA + "?v=${DateTime.now().microsecond}";
    path3Mex = path3Mex + "?v=${DateTime.now().microsecond}";
    path3USA = path3USA + "?v=${DateTime.now().microsecond}";
    path4Mex = path4Mex + "?v=${DateTime.now().microsecond}";
    path4USA = path4USA + "?v=${DateTime.now().microsecond}";
    notifyListeners();
  }
}
