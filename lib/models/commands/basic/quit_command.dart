part of command;

class QuitCommand extends Command {
  static const name = 'quit';

  QuitCommand({required super.command});

  @override
  void execute() {
    exit(200);
  }

  @override
  HelpInfo get helpInfo => HelpInfo(
        command: name,
        info: 'exit the game',
        type: HelpInfoType.tools,
      );
}
