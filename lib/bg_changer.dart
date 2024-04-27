import 'dart:io';
import 'package:process_run/process_run.dart';
import 'process_runner.dart';

const String command = 'gsettings set org.gnome.desktop.background picture-uri';

class BackgroundChanger {
  static Future<List<ProcessResult>> changeBG(String picture) async {
    final Shell service = ProcessRunner.getService();
    return await service.run('$command file://$picture');
  }
}
