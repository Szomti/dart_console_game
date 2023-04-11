part of command;

class QuitCommand extends Command {

  QuitCommand({required super.command});

  @override
  void execute() {
    exit(200);
  }

  @override
  String get prefix => 'quit';

  @override
  HelpInfo get helpInfo => HelpInfo(
        command: prefix,
        info: 'exit the game',
        type: HelpInfoType.tools,
      );
}
