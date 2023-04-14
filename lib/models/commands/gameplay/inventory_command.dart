part of command;

class InventoryCommand extends Command {
static const name = 'inventory';

  InventoryCommand({required super.command}) : super(prefix: name);

  @override
  void execute() {
    final filteredInvetory = argsString().isNotEmpty ? 
        Player().inventory.where(
          (element) => element.nameId.toLowerCase().contains(argsString()),
        ) : 
        Player().inventory;
    print('');
    if(filteredInvetory.isEmpty) return print('[Empty]');
    final sortedInventory = filteredInvetory.sorted((a, b) => a.nameId.compareTo(b.nameId));
    for (final item in sortedInventory) {
      print('${item.nameId}: \n[${betterStringNumbers(item.amount)} / ${betterStringNumbers(item.maxStack)}]');
    }
  }

  String betterStringNumbers(int num) {
    final reversedString = num.toString().trim().split('').reversed;
    String result = '';
    reversedString.forEachIndexed((index, char) {
      if(index != 0 && index%3==0) result += ' ';
      result += char;
    });
    return result.split('').reversed.join();
  }

  @override
  HelpInfo get helpInfo => HelpInfo(
    command: '$name <search>', 
    info: 'check your inventory',
    type: HelpInfoType.gameplay,
  );

  @override
  Command fromCommand({required String command}) => InventoryCommand(command: command);
}