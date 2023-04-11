import 'commands/command_library.dart';

class MainCommands {
  final String command;

  MainCommands(String? command) : command = command?.toLowerCase() ?? '';

  Command? checkCommand() {
    final action = command.split(' ');
    switch(action[0]){
      case 'get':
        return GetCommand(command: command);
      case 'quit':
        return QuitCommand(command: command);
      case 'help':
        return HelpCommand(command: command);
      case 'clear':
        return ClearCommand(command: command);
      default:
        return null;
    }
  }
}