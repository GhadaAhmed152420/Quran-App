import 'package:flutter/material.dart';
import 'package:music_app/core/resources/font_size_manager.dart';
import 'package:music_app/core/resources/icon_size_manager.dart';
import 'package:music_app/core/resources/padding_manager.dart';
import 'package:music_app/core/resources/radius_manager.dart';
import 'package:music_app/core/resources/strings_manager.dart';

import '../../../core/resources/colors_manager.dart';

class CustomSearchBox extends StatelessWidget {
  const CustomSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: PaddingManager.p55, left: PaddingManager.p31,right: PaddingManager.p31),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(PaddingManager.p10),
          hintText: StringsManager.homeSearchHintText,
          hintStyle: TextStyle(
            color: ColorsManager.white,
            fontSize: FontSizeManager.fs12,
            fontWeight: FontWeight.bold,
          ),
          filled: true,
          fillColor: ColorsManager.lilac,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(RadiusManager.r50),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(top: PaddingManager.p15, left: PaddingManager.p24, bottom: PaddingManager.p15),
            child: Icon(
              Icons.search,
              size: IconSizeManager.is20,
              color: ColorsManager.white,
            ),
          ),
        ),
      ),
    );
  }
}
