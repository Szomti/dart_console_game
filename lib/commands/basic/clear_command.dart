part of command;

class ClearCommand extends Command {
  ClearCommand({required super.command});

  @override
  void execute() {
    if(args.length > 1) {
      print('What do you want me to do with: ${command.replaceFirst('clear ', '')}?');
    }
    print('-- "Cleared" --');
    print('\n\n\n\n\n\n\n\n\n\n');
  }
}