import 'dart:io';

import 'package:dart_console_game/models/terrain_place/terrain_place.dart';

import '../entities/entity_library.dart';

class Game {
  static const _nicknameMaxLength = 16;
  static final Game _instance = Game._();
  TerrainPlace currentTerrain;
  bool introductionDone = false;

  Game._() : currentTerrain = ForestTerrain();

  factory Game() => _instance;

  void terrainChange(TerrainPlace terrain) {
    currentTerrain = terrain;
  }

  void introduction() {
    if (introductionDone) return;
    print('Oh, hey, what are you doing here?');
    print('Well, it\'s not like I will know if you tell me now...');
    print('Anyway, what do you want to be called?');
    while (true) {
      stdout.write('\nNickname: ');
      final nickname = stdin.readLineSync();
      print('');
      if (nickname == null) {
        print('Unexpected error. Try again.');
        continue;
      }
      if (nickname.length > _nicknameMaxLength) {
        print('Woah, slow down cowboy, try something shorter...');
        print('Length ${nickname.length}/$_nicknameMaxLength');
        continue;
      }
      print('Do you really want to be called $nickname? [yes/no]');
      stdout.write('Confirm: ');
      final answer = stdin.readLineSync();
      if (answer?.toLowerCase() == 'yes') {
        Player(nickname: nickname);
        break;
      }
    }
    print('\nI wish you luck (and have fun ^^)\n');
    introductionDone = true;
  }
}
