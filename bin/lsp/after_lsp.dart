abstract class FileUploader {
  bool canHandle(String path);
  void upload(String path);
}

class VideoUploader implements FileUploader {
  @override
  bool canHandle(String path) => path.endsWith('.mp4');

  @override
  void upload(String path) {
    print('Uploading video: $path');
  }
}

class ImageUploader implements FileUploader {
  @override
  bool canHandle(String path) => path.endsWith('.png');

  @override
  void upload(String path) {
    print('Uploading image: $path');
  }
}

class GenericUploader implements FileUploader {
  @override
  bool canHandle(String path) => true;

  @override
  void upload(String path) {
    print('Uploading file: $path');
  }
}

void main() {
  final uploaders = <FileUploader>[
    VideoUploader(),
    ImageUploader(),
    GenericUploader(),
  ];
  final data = ['file.pdf', 'video.mp4', 'image.png'];

  for (final item in data) {
    final uploader = uploaders.firstWhere((u) => u.canHandle(item));
    uploader.upload(item);
  }
}
