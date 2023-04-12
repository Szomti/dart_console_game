part of terrain_place;

class ForestTerrain extends TerrainPlace {
  static final ItemsList _availableItems = ItemsList([
    LogItemEntity(),
  ]);

  ForestTerrain()
      : super(
          placeName: 'forest',
          availableItems: _availableItems,
        );
}
