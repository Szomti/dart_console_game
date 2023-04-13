part of terrain_place;

class ForestTerrain extends TerrainPlace {
  static final ItemsList _availableItems = ItemsList([
    LogItem(maxGet: 50),
    StoneItem(maxGet: 10),
  ]); // TODO fix if player wants item that is not here

  ForestTerrain()
      : super(
          placeName: 'forest',
          availableItems: _availableItems,
        );
}
