part of command;

class HelpCommand extends Command {
  static const name = 'help';
  static const _baseSearchIndex = 1;
  static const _baseCommandHelpIndex = 1;
  static final commands = <HelpInfo>[
    QuitCommand(command: '').helpInfo,
    HelpCommand(command: '').helpInfo,
    GetCommand(command: '').helpInfo,
    ClearCommand(command: '').helpInfo,
  ];

  HelpCommand({required super.command});

  @override
  void execute() {
    final filtered = args.length > 1
        ? commands.where((element) => element.containsAnywhere(
              args.elementAt(_baseSearchIndex),
            ))
        : commands;
    final sortedList = filtered.sorted(
      (a, b) => a.type.text.compareTo(b.type.text),
    );
    HelpInfoType? infoType;
    for (final item in sortedList) {
      if (infoType != item.type) {
        print('\n<< [${item.type.text}] >>');
        infoType = item.type;
      }
      print(item.toOneLine());
    }
    print('');
  }

  @override
  HelpInfo get helpInfo => HelpInfo(
        command: '$name <keyword>',
        info: 'list of commands',
        type: HelpInfoType.tools,
      );

  @override
  bool shouldShowHelpInfo() {
    if (args.length > 1) {
      final command = MainCommands(
        args.elementAt(_baseCommandHelpIndex),
      ).toCommand();
      if (command != null) command.helpInfo.show();
      return true;
    }
    return false;
  }
}
