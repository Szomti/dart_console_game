import 'dart:io';

import 'package:dart_console_game/main_commands.dart';

void main(List<String> arguments) {
  while(true){
    final userInput = MainCommands(stdin.readLineSync());
    final command = userInput.checkCommand();
    if(command == null) continue;
    command.execute();
  }
}
