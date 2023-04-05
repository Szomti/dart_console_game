import 'dart:io';

import 'package:dart_console_game/main_commands.dart';

void main(List<String> arguments) {
  while(true){
    final userInput = MainCommands(stdin.readLineSync());
    if(!userInput.valid) continue;
    userInput.checkCommand();
  }
}
