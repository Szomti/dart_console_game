part of command;

class GetCommand extends Command {
  GetCommand({required super.command});

  @override
  void execute() {
    // TODO: implement execute
    print(args.elementAt(1));
  }

  @override
  String get prefix => 'get';

  @override
  HelpInfo get helpInfo => HelpInfo(
        command: '$prefix <item>',
        info: 'try to get items',
        type: HelpInfoType.gameplay,
      );
}
