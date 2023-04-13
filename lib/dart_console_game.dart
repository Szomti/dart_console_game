import 'dart:io';

import 'package:dart_console_game/main_commands.dart';
import 'package:dart_console_game/models/entities/entity_library.dart';
import 'package:dart_console_game/models/game/game.dart';

void main(List<String> arguments) {
  Game().introduction();
  while (true) {
    Player().writePlayerName();
    final userInput = MainCommands(stdin.readLineSync());
    final command = userInput.checkCommand();
    if (command == null) continue;
    if (command.shouldShowHelpInfo()) continue;
    command.run();
  }
}
