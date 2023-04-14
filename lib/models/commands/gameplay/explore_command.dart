part of command;

class ExploreCommand extends Command{
  static const name = 'explore';
  ExploreCommand({required super.command}) : super(prefix: name);

  @override
  void execute() {
    // TODO chance for a fight etc.
    final availableTerrains = TerrainPlace.fullList;
    final newTerrain = availableTerrains.elementAt(
      Random().nextIntRange(1, availableTerrains.length) - 1,
    );
    Game().terrainChange(newTerrain);
    print('You are now in ${newTerrain.placeName}');
  }

  @override
  HelpInfo get helpInfo => HelpInfo(
    command: name, 
    info: 'explore to find new terrains, but watch out for enemies!', 
    type: HelpInfoType.gameplay,
  );

  @override
  Command fromCommand({required String command}) => ExploreCommand(command: command);
}