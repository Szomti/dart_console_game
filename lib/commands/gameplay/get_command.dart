part of command;

class GetCommand extends Command {
  GetCommand({required super.command});

  @override
  void execute() {
    // TODO: implement execute
    print(args.elementAt(1));
  }
}