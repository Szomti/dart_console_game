part of command;

class GetCommand extends Command {
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
      case 'inventory':
        // TODO delete this later
        print('');
        for (final item in Player().inventory) {
          print('${item.nameId}: \n${item.amount}/${item.maxStack}');
        }
        print('');
        break;
      default:
        break;
    }
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
