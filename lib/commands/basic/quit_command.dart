part of command;

class QuitCommand extends Command {
  QuitCommand() : super(command: '');

  @override
  void execute() {
    exit(200);
  }
}