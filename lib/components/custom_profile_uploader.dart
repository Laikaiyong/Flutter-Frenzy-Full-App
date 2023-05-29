import 'dart:io';

import 'package:app/components/custom_round_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class CustomProfileUploader extends StatefulWidget {
  CustomProfileUploader({super.key, this.imageUri});
  String? imageUri;

  @override
  State<CustomProfileUploader> createState() => _CustomProfileUploaderState();
}

class _CustomProfileUploaderState extends State<CustomProfileUploader> {
  final ImagePicker _picker = ImagePicker();
  String? imageUri;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (imageUri == "" || imageUri == null) ...[
          SizedBox(
            width: 120,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: InkWell(
                onTap: () => _selectImage(),
                child: Icon(Icons.image, size: 90, color: Colors.blue.shade600),
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                onTap: () => _selectImage(),
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.blue.shade600),
                  child: Icon(CupertinoIcons.pen, color: Colors.white),
                ),
              ))
        ] else ...[
          CustomRoundImage.file(imageUri!, width: 100, height: 100)
        ]
      ],
    );
  }

  Future _selectImage() async {
    await showModalBottomSheet(
        context: context,
        builder: (context) => BottomSheet(
            enableDrag: false,
            onClosing: () {},
            builder: (context) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Icon(Icons.camera),
                      title: Text("Camera"),
                      onTap: () {
                        Navigator.of(context).pop();
                        _pickImage(ImageSource.camera);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.library_books),
                      title: Text("Gallery"),
                      onTap: () {
                        Navigator.of(context).pop();
                        _pickImage(ImageSource.gallery);
                      },
                    )
                  ],
                )));
  }

  Future _pickImage(ImageSource source) async {
    final pickedImage =
        await _picker.pickImage(source: source, imageQuality: 50);

    if (pickedImage == null) {
      return;
    }
    var file = await ImageCropper().cropImage(
        sourcePath: pickedImage!.path,
        aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1));
    if (file == null) return;

    var compressedFile = await _compressImage(file!.path, 35);

    await _uploadImage(file!.path);
  }

  Future<XFile?> _compressImage(String path, int quality) async {
    final newPath = p.join((await getTemporaryDirectory()).path,
        '${DateTime.now()}.${p.extension(path)}');

    final result = await FlutterImageCompress.compressAndGetFile(path, newPath,
        quality: quality);

    return result;
  }

  Future _uploadImage(String path) async {
    setState(() {
      imageUri = path;
    });
  }
}
