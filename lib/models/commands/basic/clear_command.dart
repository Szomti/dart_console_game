part of command;

class ClearCommand extends Command {
  static const name = 'clear';

  ClearCommand({required super.command}) : super(prefix: name);

  @override
  void execute() {
    if (args.length > 1) {
      print(
          'What do you want me to do with "${command.replaceFirst('clear ', '')}"?');
    }
    print('-- "Cleared" --');
    for (int i = 1; i <= 10; i++) {
      print('\n\n\n\n\n\n\n\n\n\n');
    }
  }

  @override
  HelpInfo get helpInfo => HelpInfo(
        command: name,
        info: 'clear terminal (not working)',
        type: HelpInfoType.tools,
      );

  @override
  Command fromCommand({required String command}) =>
      ClearCommand(command: command);
}
