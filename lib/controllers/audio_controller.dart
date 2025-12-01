import 'package:audioplayers/audioplayers.dart';
import '../core/resources/consts_values.dart';

class AudioController {
  late int index;
  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  late Uri url;

  AudioController._(this.index){
    audioCache = AudioCache(prefix: "");
    audioPlayer = AudioPlayer();
  }

  static late final AudioController _instance;

  factory AudioController(int index) {
    _instance ??= AudioController._(index);
    return _instance;
  }

  void playTrack() async {
    url = await audioCache.load(ConstsValues.quranList[index].audioPath);
    audioPlayer.play(UrlSource(url.toString()));
  }

  void disposeTrack() {
    audioPlayer.dispose();
  }
}
