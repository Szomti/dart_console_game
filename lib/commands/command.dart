part of command;

abstract class Command {
  final String command;

  Command({required this.command});

  Iterable<String> get args => command.split(' ');

  void execute();
}