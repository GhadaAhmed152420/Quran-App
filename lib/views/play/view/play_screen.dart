import 'package:flutter/material.dart';
import 'package:music_app/core/resources/font_size_manager.dart';
import 'package:music_app/core/resources/icon_size_manager.dart';
import 'package:music_app/core/resources/padding_manager.dart';
import 'package:music_app/core/resources/strings_manager.dart';
import 'package:music_app/core/resources/width_manager.dart';

import '../../../core/resources/colors_manager.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          size: IconSizeManager.is16,
          color: ColorsManager.white,
        ),
        title: Text(
          StringsManager.playScreenTitle.toUpperCase(),
          style: TextStyle(
            color: ColorsManager.white,
            fontSize: FontSizeManager.fs18,
            fontWeight: FontWeight.w500
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
        child: Center(
          child: Text(
            "Play Screen",
            style: TextStyle(color: ColorsManager.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
