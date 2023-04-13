part of entity;

class LogItem extends ItemEntity {
  static const name = 'log';
  static const _maxStack = 1000000;

  LogItem({
    super.maxGet,
  }) : super(
          nameId: name,
          maxStack: _maxStack,
        );
}
