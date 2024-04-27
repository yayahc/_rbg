import 'dart:io';
import 'package:process_run/process_run.dart';
import 'process_runner.dart';

const String command = 'gsettings set org.gnome.desktop.background picture-uri';

class BackgroundChanger {
  Future<List<ProcessResult>> changeBG(String picture) async {
    final ProcessRunner runner = ProcessRunner();
    final Shell service = runner.getService();
    return await service.run('$command file://$picture');
  }
}
