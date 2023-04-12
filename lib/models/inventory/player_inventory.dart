import 'package:dart_console_game/entities/items/items_list.dart';

import '../../entities/entity_library.dart';

class PlayerInventory extends ItemsList {
  static final PlayerInventory _instance = PlayerInventory._();

  PlayerInventory._() : super([]);

  factory PlayerInventory() => _instance;

  void add(ItemEntity item) {
    if (!hasItem(item)) {
      items.add(item);
    } else {
      final foundItem = findItem(item);
      if(foundItem == null) return;
      foundItem.add(amount: item.amount);
    }
  }

  void remove(ItemEntity item) => items.toList().remove(item);
}
