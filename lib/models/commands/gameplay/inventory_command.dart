part of command;

class InventoryCommand extends Command {
static const name = 'inventory';

  InventoryCommand({required super.command});

  @override
  void execute() {
    final filteredInvetory = argsString().isNotEmpty ? 
        Player().inventory.where(
          (element) => element.nameId.toLowerCase().contains(argsString()),
        ) : 
        Player().inventory;
    final sortedInventory = filteredInvetory.sorted((a, b) => a.nameId.compareTo(b.nameId));
    print('');
    for (final item in sortedInventory) {
      print('${item.nameId}: \n${item.amount}/${item.maxStack}');
    }
    print('');
  }

  @override
  HelpInfo get helpInfo => HelpInfo(
    command: '$name <search>', 
    info: 'check your inventory', 
    type: HelpInfoType.gameplay,
  );

}