part of command;

class ClearCommand extends Command {
  ClearCommand({required super.command});

  @override
  void execute() {
    if (args.length > 1) {
      print(
          'What do you want me to do with "${command.replaceFirst('clear ', '')}"?');
    }
    print('-- "Cleared" --');
    for(int i = 1;i<=10;i++){
      print('\n\n\n\n\n\n\n\n\n\n');
    }
  }

  @override
  String get prefix => 'clear';

  @override
  HelpInfo get helpInfo => HelpInfo(
        command: prefix,
        info: 'clear terminal (not working)',
        type: HelpInfoType.tools,
      );
}
