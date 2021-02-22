import 'dart:io';

import 'package:checkin/src/repositories/image_repository.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageProvider implements ImageRepository {
  @override
  Future<File> getCroppedImage() async {
    PickedFile selectedImage = await ImagePicker().getImage(source: ImageSource.gallery);
    if (selectedImage != null) {
      return await ImageCropper.cropImage(
          cropStyle: CropStyle.circle, sourcePath: selectedImage.path);
    }
    return null;
  }
}
