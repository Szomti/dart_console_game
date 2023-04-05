part of entity;

class LogItemEntity extends ItemEntity {
  static const _maxStack = 1000000;

  LogItemEntity() : super(maxStack: _maxStack);

  @override
  void get({int amount = 1}) {
    this.amount += amount;
  }

  @override
  void remove({int amount = 1}) {
    this.amount -= amount;
  }
}
