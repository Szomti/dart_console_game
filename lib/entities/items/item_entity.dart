part of entity;

abstract class ItemEntity extends Entity {
  final int maxStack;
  int amount;

  ItemEntity({
    int? maxStack,
    int? amount,
  }) :  maxStack = maxStack ?? 100000,
        amount = amount ?? 0;

  void get({int amount = 1});

  void remove({int amount = 1});
}
