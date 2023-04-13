import 'dart:core';

import '../entity_library.dart';

class ItemsList extends Iterable<ItemEntity> {
  static final List<ItemEntity> all = [
    LogItem(),
  ];
  final List<ItemEntity> items;

  ItemsList(this.items);

  @override
  Iterator<ItemEntity> get iterator => items.iterator;

  bool hasItem(ItemEntity newItem) {
    for(final item in items) {
      if(item.nameId == newItem.nameId && item.maxStack == newItem.maxStack){
        return true;
      }
    }
    return false;
  }

  ItemEntity? findItem(ItemEntity newItem) {
    for(final item in items) {
      if(item.nameId == newItem.nameId && item.maxStack == newItem.maxStack){
        return item;
      }
    }
    return null;
  }
}
