part of entity;

class Player extends CreatureEntity {
  static const int _baseHealth = 100;
  static const int _baseMinDmg = 5;
  static const int _baseMaxDmg = 15;
  static const double _baseCritChance = 1.05;
  static const double _baseCritMulti = 1.2;
  static const int _baseSpeed = 5;
  static const double _baseDefense = 1.02;
  static const double _baseLuck = 1.0;
  static final Player _instance = Player._();

  PlayerInventory inventory;
  TerrainPlace currentTerrain;

  Player._()
      : inventory = PlayerInventory(),
        currentTerrain = ForestTerrain(),
        super(
          health: _baseHealth,
          damage: DamageStatus(
            min: _baseMinDmg,
            max: _baseMaxDmg,
            criticalChance: _baseCritChance,
            criticalMultiplier: _baseCritMulti,
          ),
          speed: _baseSpeed,
          defense: _baseDefense,
          luck: _baseLuck,
        );

  factory Player() => _instance;

  void getItem(ItemEntity item) {
    inventory.add(item);
  }

  @override
  int attack() {
    // TODO more complicated
    return ((damage.min + damage.max) * 0.5).toInt();
  }

  @override
  void getDamage(int damage) {
    final realDmg = (damage * defense).toInt();
    health -= realDmg;
  }
}
