part of entity;

abstract class ItemEntity extends Entity {
  final String nameId;
  final int maxStack;
  int amount;

  ItemEntity({
    required this.nameId,
    int? maxStack,
    int? amount,
  }) :  maxStack = maxStack ?? 100000,
        amount = amount ?? 0;

  void get({int amount = 1});

  void add({int amount = 1}) {
    this.amount += amount;
  }

  void remove({int amount = 1}) {
    this.amount -= amount;
  }

  bool isTheSameItem(ItemEntity other) {
    return nameId == other.nameId && maxStack == other.maxStack;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is ItemEntity &&
          nameId == other.nameId &&
          maxStack == other.maxStack;

  @override
  int get hashCode => super.hashCode ^ nameId.hashCode ^ maxStack.hashCode;
}
