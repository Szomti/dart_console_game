import '../models/commands/command_library.dart';

class MainCommands {
  final String command;

  MainCommands(String? command) : command = command?.toLowerCase() ?? '';

  Command? toCommand() {
    final action = command.split(' ');
    for(final commandObj in Command.fullList){
      if(commandObj.prefix.toLowerCase() == action[0]){
        return commandObj.fromCommand(command: command);
      }
    }
    return null;
  }
}
