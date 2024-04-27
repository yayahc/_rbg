import 'dart:math';
import 'package:rbg/bg_changer.dart';
import 'package:rbg/file_manager.dart';

const String picturesPath = '/home/yayahc/Pictures/bgs';

Future<void> main(List<String> arguments) async {
  final BackgroundChanger bgChanger = BackgroundChanger();
  final FileManager fileManager = FileManager();
  final String? picturesPathFromArgs = _readArgs(arguments);
  final List<String> pictures = await fileManager
      .readCurrentFolderFiles(picturesPathFromArgs ?? picturesPath);
  await bgChanger.changeBG(pictures[Random().nextInt(pictures.length)]);
}

String? _readArgs(List<String> args) {
  try {
    print(args.first);
    return args.first;
  } catch (e) {
    return null;
  }
}
