part of entity;

class HerbItem extends ItemEntity<HerbItem> {
  static const name = 'herb';
  static const _maxStack = 100000;

  HerbItem({
    super.maxGet,
  }) : super(
          nameId: name,
          maxStack: _maxStack,
        );
}
