import 'package:flutter/material.dart';
import 'package:music_app/models/songs_model.dart';
import '../../../core/resources/alpha_manager.dart';
import '../../../core/resources/assets_manager.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/font_size_manager.dart';
import '../../../core/resources/height_manager.dart';
import '../../../core/resources/padding_manager.dart';
import '../../../core/resources/radius_manager.dart';
import '../../../core/resources/width_manager.dart';

class CustomUpNextPanel extends StatelessWidget {
  const CustomUpNextPanel({super.key, required this.songModel});

  final SongModel songModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: PaddingManager.p32),
      child: Container(
        width: WidthManager.w362,
        height: HeightManager.h115,
        decoration: BoxDecoration(
          color: ColorsManager.lilac.withValues(alpha: AlphaManager.a0_54),
          borderRadius: BorderRadius.circular(RadiusManager.r10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(PaddingManager.p4),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(RadiusManager.r10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: PaddingManager.p11,
                    vertical: PaddingManager.p10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Up Next',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorsManager.white,
                          fontSize: FontSizeManager.fs12,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: PaddingManager.p10,
                          vertical: PaddingManager.p3,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            RadiusManager.r10,
                          ),
                          color: ColorsManager.deepLilac,
                        ),
                        child: Text(
                          'Queue >',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorsManager.white,
                            fontSize: FontSizeManager.fs12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Container(
                    width: WidthManager.w55,
                    height: HeightManager.h55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(RadiusManager.r10),
                      image: DecorationImage(
                        image: NetworkImage(
                          songModel.image,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),),
                  title: Padding(
                    padding: const EdgeInsets.only(top: PaddingManager.p9),
                    child: Text(
                      songModel.name,
                      style: TextStyle(
                        color: ColorsManager.white,
                        fontSize: FontSizeManager.fs15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Text(
                      songModel.singer,
                    style: TextStyle(
                      color: ColorsManager.lilac,
                      fontSize: FontSizeManager.fs12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Image.asset(
                    AssetsManager.next,
                    color: ColorsManager.white,
                    width: WidthManager.w24,
                    height: HeightManager.h24,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
