import '../models/commands/command_library.dart';

class MainCommands {
  final String command;

  MainCommands(String? command) : command = command?.toLowerCase() ?? '';

  Command? toCommand() {
    final action = command.split(' ');
    switch (action[0]) {
      case GetCommand.name:
        return GetCommand(command: command);
      case QuitCommand.name:
        return QuitCommand(command: command);
      case HelpCommand.name:
        return HelpCommand(command: command);
      case ClearCommand.name:
        return ClearCommand(command: command);
      case InventoryCommand.name:
        return InventoryCommand(command: command);
      default:
        return null;
    }
  }
}
