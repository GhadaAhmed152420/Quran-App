import 'package:flutter/material.dart';
import 'package:music_app/models/songs_model.dart';
import '../../../controllers/home_controller.dart';
import '../../../core/resources/alpha_manager.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/font_size_manager.dart';
import '../../../core/resources/height_manager.dart';
import '../../../core/resources/padding_manager.dart';
import '../../../core/resources/radius_manager.dart';
import '../../../core/resources/width_manager.dart';

class CustomSongDetails extends StatelessWidget {
  const CustomSongDetails({super.key, required this.songModel});

  final SongModel songModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: PaddingManager.p174,
                left: PaddingManager.p96_5,
                right: PaddingManager.p96_5,
              ),
              child: Container(
                width: WidthManager.w234,
                height: HeightManager.h247,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(RadiusManager.r20),
                  color: ColorsManager.white.withValues(
                    alpha: AlphaManager.a0_05,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: PaddingManager.p174,
                left: PaddingManager.p90,
                right: PaddingManager.p90,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(RadiusManager.r20),
                child: Image.network(songModel.image),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: PaddingManager.p23),
          child: Text(
            songModel.name,
            style: TextStyle(
              color: ColorsManager.white,
              fontSize: FontSizeManager.fs18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: PaddingManager.p4),
          child: Text(
            songModel.singer,
            style: TextStyle(
              color: ColorsManager.lilac,
              fontSize: FontSizeManager.fs12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
