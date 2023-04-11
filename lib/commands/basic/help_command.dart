part of command;

class HelpCommand extends Command {
  static const _baseSearchIndex = 1;
  static const _baseCommandHelpIndex = 1;
  static const commands = <String>[
    'quit - exit the game',
    'help <keyword> - list of commands',
    'get <item> - try to get items',
    'clear - clear terminal (not working)',
  ];

  HelpCommand({required super.command});

  @override
  void execute() {
    final filtered = args.length > 1
        ? commands.where(
          (element) => element.contains(args.elementAt(_baseSearchIndex)),
    )
        : commands;
    for (final item in filtered) {
      print(item);
    }
  }

  @override
  String get prefix => 'help';

  @override
  HelpInfo get helpInfo =>
      HelpInfo(
        command: '$prefix <keyword>',
        info: 'list of commands',
        type: HelpInfoType.tools,
      );

  @override
  bool shouldShowHelpInfo() {
    if (args.length > 1) {
      final command = MainCommands(
        args.elementAt(_baseCommandHelpIndex),
      ).checkCommand();
      if (command != null) command.helpInfo.show();
      return true;
    }
    return false;
  }
}
