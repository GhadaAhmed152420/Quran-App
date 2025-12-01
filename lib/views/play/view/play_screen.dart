import 'package:flutter/material.dart';
import 'package:quran_app/controllers/play_controller.dart';
import 'package:quran_app/core/resources/font_size_manager.dart';
import 'package:quran_app/core/resources/icon_size_manager.dart';
import 'package:quran_app/core/resources/padding_manager.dart';
import 'package:quran_app/core/resources/strings_manager.dart';
import 'package:quran_app/core/resources/width_manager.dart';
import 'package:quran_app/views/play/widgets/custom_actions_list.dart';
import '../../../controllers/audio_controller.dart';
import '../../../core/resources/colors_manager.dart';
import '../widgets/custom_player_controls.dart';
import '../widgets/custom_song_details.dart';
import '../widgets/custom_up_next_panel.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  late PlayController controller;
  late AudioController _audioController;
  late int index;

  @override
  void initState() {
    super.initState();
    controller = PlayController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    index = ModalRoute.of(context)!.settings.arguments as int;
    _audioController = AudioController(index);
    _audioController.playTrack();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.getArgIndex(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            size: IconSizeManager.is16,
            color: ColorsManager.white,
          ),
          onPressed: () {
            controller.popToHomeScreen(context);
          },
        ),
        title: Text(
          StringsManager.playScreenTitle.toUpperCase(),
          style: TextStyle(
            color: ColorsManager.white,
            fontSize: FontSizeManager.fs18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.share_rounded,
            size: IconSizeManager.is16,
            color: ColorsManager.white,
          ),
          SizedBox(width: WidthManager.w21),
          Padding(
            padding: const EdgeInsets.only(right: PaddingManager.p18),
            child: Icon(
              Icons.more_vert_rounded,
              size: IconSizeManager.is16,
              color: ColorsManager.white,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ColorsManager.purple, ColorsManager.darkPurple],
          ),
        ),
        child: Column(
          children: [
            CustomSongDetails(quranTrack: controller.quranTrack),
            CustomPlayerControls(onChanged: (double value) {}, value: 0.6),
            CustomActionsList(),
            CustomUpNextPanel(quranTrack: controller.quranTrack),
          ],
        ),
      ),
    );
  }
}
