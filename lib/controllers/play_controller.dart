import 'package:flutter/cupertino.dart';
import 'package:music_app/core/resources/consts_values.dart';
import 'package:music_app/models/songs_model.dart';
import '../core/resources/routes_manager.dart';

class PlayController {
  late SongModel songModel;
  late int index;

  void getArgIndex(BuildContext context) {
    index = ModalRoute.of(context)!.settings.arguments as int;
    songModel = ConstsValues.songsList[index];
  }

  static void popToHomeScreen(BuildContext context) {
    Navigator.pop(context, RoutePaths.home);
  }
}
