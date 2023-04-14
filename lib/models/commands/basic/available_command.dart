part of command;

class AvailableCommand extends Command {
  static const name = 'available';
  static final Iterable<Command> fullList = [
    GetCommand(command: ''),
  ];

  AvailableCommand({required super.command}) : super(prefix: name);

  @override
  void execute() {
    print('');
    switch (argsString()) {
      case GetCommand.name:
        availableGetitems();
        break;
      default:
        actionList();
        break;
    }
  }

  @override
  HelpInfo get helpInfo => HelpInfo(
        command: '$name <keyword>',
        info: 'check available actions (empty gives list of actions)',
        type: HelpInfoType.tools,
      );

  @override
  Command fromCommand({required String command}) =>
      AvailableCommand(command: command);

  void availableGetitems() {
    final list = Game().currentTerrain.availableItems;
    for (final item in list) {
      print('- ${item.nameId}');
    }
  }

  void actionList() {
    if (argsString().isNotEmpty) return print('Not found');
    for (final command in fullList) {
      print('- ${command.prefix}');
    }
  }
}
