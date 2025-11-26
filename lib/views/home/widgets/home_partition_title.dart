import 'package:flutter/material.dart';
import 'package:music_app/core/resources/font_size_manager.dart';
import 'package:music_app/core/resources/padding_manager.dart';
import '../../../core/resources/colors_manager.dart';

class HomePartitionTitle extends StatelessWidget {
  const HomePartitionTitle({
    super.key, required this.title, required this.rightPadding,
  });
  final String title;
  final double rightPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: PaddingManager.p34, right: rightPadding, top: PaddingManager.p34),
      child: Text(title, style: TextStyle(
        color: ColorsManager.white,
        fontSize: FontSizeManager.fs18,
        fontWeight: FontWeight.bold,
      ),
      ),
    );
  }
}
