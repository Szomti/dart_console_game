library terrain_place;

import 'package:dart_console_game/entities/entity_library.dart';

import '../entities/items/items_list.dart';

part './forest_terrain.dart';

abstract class TerrainPlace {
  final String placeName;
  final ItemsList availableItems;

  TerrainPlace({
    required this.placeName,
    required this.availableItems,
  });
}
