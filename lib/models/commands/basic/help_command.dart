part of command;

class HelpCommand extends Command {
  static const name = 'help';
  static const _baseCommandHelpIndex = 1;
  static final Iterable<HelpInfo> commands = Command.fullList.map((e) => e.helpInfo);

  HelpCommand({required super.command}) : super(prefix: name);

  @override
  void execute() {
    final filtered = argsString().isNotEmpty
        ? commands
            .where((element) => element.containsAnywhere(argsString()))
        : commands;
    final sortedList = filtered.sorted(
      (a, b) {
        final result = a.type.text.compareTo(b.type.text);
        if(result != 0) return result;
        return a.command.compareTo(b.command);
      } 
    );
    HelpInfoType? infoType;
    for (final item in sortedList) {
      if (infoType != item.type) {
        print('\n<< [${item.type.text}] >>');
        infoType = item.type;
      }
      print(item.toOneLine());
    }
  }

  @override
  HelpInfo get helpInfo => HelpInfo(
        command: '$name <search>',
        info: 'list of commands',
        type: HelpInfoType.tools,
      );

  @override
  bool shouldShowHelpInfo() {
    if (args.length > 1) {
      final command = MainCommands(
        args.elementAt(_baseCommandHelpIndex),
      ).toCommand();
      if (command != null) {
        command.helpInfo.show();
        return true;
      }
    }
    return false;
  }

  @override
  Command fromCommand({required String command}) => HelpCommand(command: command);
  
}
