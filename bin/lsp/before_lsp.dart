class UploadFileService {
  void uploadFile(String path) {
    print('Uploading file: $path');
  }
}

class UploadVideo extends UploadFileService {
  @override
  void uploadFile(String path) {
    if (!path.endsWith('.mp4')) {
      throw UnsupportedError('UploadVideo only supports .mp4 files');
    }
    print('Uploading video: $path');
  }
}

class UploadImage extends UploadFileService {
  @override
  void uploadFile(String path) {
    if (!path.endsWith('.png')) {
      throw UnsupportedError('UploadImage only supports .png files');
    }
    print('Uploading image: $path');
  }
}

void main() {
  final uploader = UploadVideo();

  // LSP violation: caller expects any UploadFileService to accept any file.
  uploader.uploadFile('file.pdf');
}
