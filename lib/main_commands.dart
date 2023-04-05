class MainCommands {
  final String command;

  MainCommands(String? command) : command = command?.toLowerCase() ?? '';

  bool get valid => checkCommand();

  bool checkCommand() {
    final action = command.split(' ');
    switch(action[0]){
      case 'get':
        return true;
      case 'quit':

        return true;
      default:
        return false;
    }
  }
}