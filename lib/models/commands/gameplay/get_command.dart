part of command;

class GetCommand extends Command {
  static const name = 'get';

  GetCommand({required super.command});

  @override
  void execute() {
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
        break;
    }
  }

  @override
  HelpInfo get helpInfo => HelpInfo(
        command: '$name <item>',
        info: 'try to get items',
        type: HelpInfoType.gameplay,
      );
}
