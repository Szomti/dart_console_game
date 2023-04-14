part of command;

abstract class Command {
  static const _helpIndex = 1;
  static const _helpText = 'help';
  static final Iterable<Command> fullList = [
    QuitCommand(command: ''),
    HelpCommand(command: ''),
    GetCommand(command: ''),
    ClearCommand(command: ''),
    InventoryCommand(command: ''),
    ExploreCommand(command: ''),
    AvailableCommand(command: ''),
  ];
  final String command;
  final String prefix;

  Command({required this.command, required this.prefix});

  Iterable<String> get args => command.split(' ');

  bool get hasArgs => args.length > 1;

  String argsString() {
    final result = args.toList()..removeAt(0);
    return result.join(' ');
  }

  HelpInfo get helpInfo;

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

  Command fromCommand({required String command});
}
