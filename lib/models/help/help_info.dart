import 'package:dart_console_game/models/help/help_info_type.dart';

class HelpInfo {
  final String command;
  final String info;
  final HelpInfoType type;

  HelpInfo({
    required this.command,
    required this.info,
    required this.type,
  });

  void show() {
    print('');
    print('-- Help --');
    print('Command: $command');
    print('Type: ${type.text}');
    print('Info: $info');
    print('');
  }

  bool containsAnywhere(String text) {
    return command.toLowerCase().contains(text) ||
        info.toLowerCase().contains(text) ||
        type.text.toLowerCase().contains(text);
  }

  String toOneLine() => '$command - $info';
}
