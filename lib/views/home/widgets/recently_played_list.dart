import 'package:flutter/material.dart';
import 'package:music_app/controllers/home_controller.dart';
import 'package:music_app/core/resources/font_size_manager.dart';
import 'package:music_app/core/resources/height_manager.dart';
import 'package:music_app/core/resources/padding_manager.dart';
import 'package:music_app/core/resources/radius_manager.dart';
import 'package:music_app/core/resources/width_manager.dart';
import 'package:music_app/models/songs_model.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/consts_values.dart';

class RecentlyPlayedList extends StatelessWidget {
  const RecentlyPlayedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HeightManager.h242,
      child: Padding(
        padding: const EdgeInsets.only(
          top: PaddingManager.p22,
          left: PaddingManager.p22,
        ),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              HomeController.navigateToPlayScreen(context, index);
            },
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(RadiusManager.r10),
                  child: SizedBox(
                    width: WidthManager.w151,
                    height: HeightManager.h151,
                    child: Image.network(ConstsValues.songsList[index].image),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: PaddingManager.p9),
                  child: Text(
                    ConstsValues.songsList[index].name,
                    style: TextStyle(
                      color: ColorsManager.white,
                      fontSize: FontSizeManager.fs15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  ConstsValues.songsList[index].singer,
                  style: TextStyle(
                    color: ColorsManager.lilac,
                    fontSize: FontSizeManager.fs12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          separatorBuilder: (context, index) =>
              SizedBox(width: WidthManager.w17),
          itemCount: ConstsValues.songsList.length,
        ),
      ),
    );
  }
}
