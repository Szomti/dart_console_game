part of entity;

class LogItem extends ItemEntity<LogItem> {
  static const name = 'log';
  static const _maxStack = 1000000;

  LogItem({
    super.maxGet,
  }) : super(
          nameId: name,
          maxStack: _maxStack,
        );
}
