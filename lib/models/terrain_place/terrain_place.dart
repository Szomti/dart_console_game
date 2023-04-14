library terrain_place;

import '../entities/entity_library.dart';
import '../entities/items/items_list.dart';

part 'forest_terrain.dart';

abstract class TerrainPlace {
  static final fullList = [
    ForestTerrain(),
  ];
  final String placeName;
  final ItemsList availableItems;

  TerrainPlace({
    required this.placeName,
    required this.availableItems,
  });
}
