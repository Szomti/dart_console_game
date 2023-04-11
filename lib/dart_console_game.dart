import 'dart:io';

import 'package:dart_console_game/main_commands.dart';

void main(List<String> arguments) {
  while(true){
    stdout.write('Player: ');
    final userInput = MainCommands(stdin.readLineSync());
    final command = userInput.checkCommand();
    if(command == null) continue;
    if(command.shouldShowHelpInfo()) continue;
    command.execute();
  }
}
