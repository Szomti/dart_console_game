part of entity;

class StoneItem extends ItemEntity<StoneItem> {
  static const name ='stone';
  static const _maxStack = 1000000;

  StoneItem({
    super.maxGet,
  }) : super(
    nameId: name, 
    maxStack: _maxStack,
  );

}