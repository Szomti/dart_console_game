part of entity;

abstract class CreatureEntity extends Entity {
  int health;
  DamageStatus damage;
  int speed;
  double defense;
  double luck;

  CreatureEntity({
    required this.health,
    required this.damage,
    required this.speed,
    required this.defense,
    required this.luck,
  });

  int attack();
  void getDamage(int damage);
}
