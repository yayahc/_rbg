import 'dart:io';

class FileManager {
  static Future<List<String>> readCurrentFolderFiles(
      String picturesPath) async {
    final List<String> pictures = <String>[];
    final Directory dir = Directory(picturesPath);
    final files = dir.list();
    await files.forEach((e) {
      e is File ? pictures.add(e.path) : null;
    });
    return pictures;
  }
}
