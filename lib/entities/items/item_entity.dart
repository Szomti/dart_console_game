part of entity;

abstract class ItemEntity<T> extends Entity {
  final String nameId;
  final int maxStack;
  final int maxGet;
  int amount;

  ItemEntity({
    required this.nameId,
    int? maxGet,
    int? maxStack,
    int? amount,
  }) :  maxGet = maxGet ?? 25,
        maxStack = maxStack ?? 100000,
        amount = amount ?? 0;

  void get({int amount = 1}) {
    Player player = Player();
    final item = player.currentTerrain.availableItems.firstWhere((element) => element is T);
    this.amount = Random().nextInt(item.maxGet + 1);
    Player().getItem(this);
    print('Got ${this.amount} $nameId[s]!');
  }

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
