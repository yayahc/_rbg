import 'dart:math';
import 'package:rbg/bg_changer.dart';
import 'package:rbg/file_manager.dart';

Future<void> main(List<String> arguments) async {
  final String? picturesPathFromArgs = _readArgs(arguments);
  final List<String> pictures =
      await FileManager.readCurrentFolderFiles(picturesPathFromArgs ?? '');
  await BackgroundChanger.changeBG(pictures[Random().nextInt(pictures.length)]);
}

String? _readArgs(List<String> args) {
  try {
    print(args.first);
    return args.first;
  } catch (e) {
    return null;
  }
}
