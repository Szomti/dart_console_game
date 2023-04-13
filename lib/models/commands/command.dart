part of command;

abstract class Command {
  static const _helpIndex = 1;
  static const _helpText = 'help';
  final String command;

  Command({required this.command});

  Iterable<String> get args => command.split(' ');

  HelpInfo get helpInfo;

  String get prefix;

  bool shouldShowHelpInfo() {
    final result = args.length > 1 && args.elementAt(_helpIndex) == _helpText;
    if (result) helpInfo.show();
    return result;
  }

  void execute();

  void run() {
    if (command.isEmpty) return;
    execute();
  }
}
