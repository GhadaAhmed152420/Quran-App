import 'package:flutter/cupertino.dart';
import 'package:music_app/core/resources/alpha_manager.dart';
import 'package:music_app/core/resources/colors_manager.dart';
import 'package:music_app/core/resources/font_size_manager.dart';
import 'package:music_app/core/resources/height_manager.dart';
import 'package:music_app/core/resources/padding_manager.dart';
import 'package:music_app/core/resources/strings_manager.dart';
import 'package:music_app/core/resources/width_manager.dart';
import '../../../core/resources/assets_manager.dart';
import '../../../core/resources/radius_manager.dart';

class CustomActionsList extends StatelessWidget {
  const CustomActionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: PaddingManager.p14),
      child: Container(
        width: WidthManager.w252,
        height: HeightManager.h46,
        decoration: BoxDecoration(
          color: ColorsManager.lilac.withValues(alpha: AlphaManager.a0_54),
          borderRadius: BorderRadius.circular(RadiusManager.r10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(RadiusManager.r10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(AssetsManager.like, color: ColorsManager.white, width: WidthManager.w24, height: HeightManager.h24),
                    Text(StringsManager.actionsTitles[0], style: TextStyle(color: ColorsManager.white,fontWeight: FontWeight.bold,fontSize: FontSizeManager.fs10)),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(AssetsManager.playlist, color: ColorsManager.white, width: WidthManager.w24, height: HeightManager.h24),
                    Text(StringsManager.actionsTitles[1], style: TextStyle(color: ColorsManager.white,fontWeight: FontWeight.bold,fontSize: FontSizeManager.fs10)),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(AssetsManager.download, color: ColorsManager.white, width: WidthManager.w24, height: HeightManager.h24),
                    Text(StringsManager.actionsTitles[2], style: TextStyle(color: ColorsManager.white,fontWeight: FontWeight.bold,fontSize: FontSizeManager.fs10)),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(AssetsManager.more, color: ColorsManager.white, width: WidthManager.w24, height: HeightManager.h24),
                    Text(StringsManager.actionsTitles[3], style: TextStyle(color: ColorsManager.white,fontWeight: FontWeight.bold,fontSize: FontSizeManager.fs10)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
