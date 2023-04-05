library command;

part './get_command.dart';

abstract class Command {
  final String command;

  Command({required this.command});

  void doAction();
}