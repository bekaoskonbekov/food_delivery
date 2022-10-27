import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/error/failure.dart';
import '../../data/repositories/pick_photo_repo_imp.dart';

class PickImageFromGalleryUseCase {
  PickPhotoRepoImpl pickPhotoRepoImpl;
  PickImageFromGalleryUseCase(this.pickPhotoRepoImpl);
  Future<Either<Failures, Unit>> call() async {
    return await pickPhotoRepoImpl.pickImage(source: ImageSource.gallery);
  }
}
