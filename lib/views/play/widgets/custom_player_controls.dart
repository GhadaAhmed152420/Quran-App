import 'package:flutter/material.dart';
import 'package:music_app/core/resources/padding_manager.dart';
import '../../../core/resources/assets_manager.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/height_manager.dart';
import '../../../core/resources/radius_manager.dart';
import '../../../core/resources/width_manager.dart';

class CustomPlayerControls extends StatelessWidget {
  const CustomPlayerControls({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: PaddingManager.p28, left: PaddingManager.p26, right: PaddingManager.p26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsManager.shuffle,
            color: ColorsManager.white,
            width: WidthManager.w18,
            height: HeightManager.h16,
          ),
          Container(
            width: WidthManager.w36,
            height: HeightManager.h36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  ColorsManager.lightPurple,
                  ColorsManager.lilac,
                ],
              ),
            ),
            child: Image.asset(
              AssetsManager.previous,
              color: ColorsManager.white,
              width: WidthManager.w20,
              height: HeightManager.h20,
            ),
          ),
          CircleAvatar(
            radius: RadiusManager.r30,
            backgroundColor: ColorsManager.lilac,
            child: Image.asset(
              AssetsManager.pause,
              color: ColorsManager.white,
              width: WidthManager.w24,
              height: HeightManager.h24,
            ),
          ),
          Container(
            width: WidthManager.w36,
            height: HeightManager.h36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  ColorsManager.lightPurple,
                  ColorsManager.lilac,
                ],
              ),
            ),
            child: Image.asset(
              AssetsManager.next,
              color: ColorsManager.white,
              width: WidthManager.w20,
              height: HeightManager.h20,
            ),
          ),
          Image.asset(
            AssetsManager.repeat,
            color: ColorsManager.white,
            width: WidthManager.w24,
            height: HeightManager.h24,
          ),
        ],
      ),

    );
  }
}
