part of command;

class HelpCommand extends Command {
  static const _baseSearchIndex = 1;
  static const commands = <String>[
    'quit',
    'help <keyword>',
    'get <item>',
  ];

  HelpCommand({required super.command});

  @override
  void execute() {
    final filtered = args.length > 1 ? commands.where(
      (element) => element.contains(args.elementAt(_baseSearchIndex)),
    ) : commands;
    for (final item in filtered) {
      print(item);
    }
  }
}
