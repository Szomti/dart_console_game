import 'dart:io';

import 'package:dart_console_game/models/entities/entity_library.dart';
import 'package:dart_console_game/models/game/game.dart';

import 'main_commands.dart';

void main(List<String> arguments) {
  Game().introduction();
  while (true) {
    Player().writePlayerName();
    final userInput = MainCommands(stdin.readLineSync());
    final command = userInput.toCommand();
    if (command == null) continue;
    if (command.shouldShowHelpInfo()) continue;
    command.run();
  }
}
