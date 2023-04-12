part of entity;

class LogItemEntity extends ItemEntity {
  static const name = 'log';
  static const _maxStack = 1000000;

  LogItemEntity()
      : super(
          nameId: name,
          maxStack: _maxStack,
        );

  @override
  void get({int amount = 1}) {
    this.amount = 4;
    Player().getItem(this);
  }
}
