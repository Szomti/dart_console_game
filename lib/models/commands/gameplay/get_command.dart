part of command;

class GetCommand extends Command {
  static const name = 'get';

  GetCommand({required super.command}) : super(prefix: name);

  @override
  void execute() {
    if(!hasArgs) return print('Empty argument');
    final item = args.elementAt(1);
    if (item == 'all') {
      print(ItemsList.all);
      return;
    }
    switch (item) {
      case LogItem.name:
        return LogItem().get();
      case StoneItem.name:
        return StoneItem().get();
      case HerbItem.name:
        return HerbItem().get();
      default:
        return print('Not found');
    }
  }

  @override
  HelpInfo get helpInfo => HelpInfo(
        command: '$name <item>',
        info: 'try to get items',
        type: HelpInfoType.gameplay,
      );

  @override
  Command fromCommand({required String command}) => GetCommand(command: command);
}
