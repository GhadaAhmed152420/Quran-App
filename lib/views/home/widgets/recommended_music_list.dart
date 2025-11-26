import 'package:flutter/material.dart';
import 'package:music_app/core/resources/font_size_manager.dart';
import 'package:music_app/core/resources/height_manager.dart';
import 'package:music_app/core/resources/padding_manager.dart';
import 'package:music_app/core/resources/width_manager.dart';
import '../../../controllers/home_controller.dart';
import '../../../core/resources/assets_manager.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/consts_values.dart';

class RecommendedMusicList extends StatelessWidget {
  const RecommendedMusicList({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          HomeController.navigateToPlayScreen(context, index);
        },
        child: ListTile(
          leading: SizedBox(
            width: WidthManager.w72,
            height: HeightManager.h72,
            child: CircleAvatar(
              backgroundImage: NetworkImage(  ConstsValues.songsList[index].image),
            ),
          ),
          title: Padding(
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
          subtitle: Text(
            ConstsValues.songsList[index].singer,
            style: TextStyle(
              color: ColorsManager.lilac,
              fontSize: FontSizeManager.fs12,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Image.asset(AssetsManager.favorite),
        ),
      ),
      separatorBuilder: (context, index) => SizedBox(height: HeightManager.h21),
      itemCount:   ConstsValues.songsList.length,
    );
  }
}
