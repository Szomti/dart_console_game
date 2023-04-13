part of terrain_place;

class ForestTerrain extends TerrainPlace {
  static final name = 'forest';
  static final ItemsList _availableItems = ItemsList([
    LogItem(maxGet: 8),
    StoneItem(maxGet: 3),
    HerbItem(maxGet: 10),
  ]);

  ForestTerrain()
      : super(
          placeName: name,
          availableItems: _availableItems,
        );
}
