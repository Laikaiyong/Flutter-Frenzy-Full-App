import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomRoundImage extends StatelessWidget {
  CustomRoundImage(this.provider,
      {super.key, required this.height, required this.width});
  final ImageProvider provider;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(height / 2),
      child: Image(
        image: provider,
        height: height,
        width: width,
      ),
    );
  }

  factory CustomRoundImage.memory(Uint8List uri,
      {required double height, required double width}) {
    return CustomRoundImage(MemoryImage(uri), height: height, width: width);
  }

  factory CustomRoundImage.web(String uri,
      {required double height, required double width}) {
    return CustomRoundImage(NetworkImage(uri), height: height, width: width);
  }

  factory CustomRoundImage.file(String uri,
      {required double height, required double width}) {
    return CustomRoundImage(FileImage(File(uri)), height: height, width: width);
  }
}
