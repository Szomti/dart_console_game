import 'dart:math';

extension RandomExtension on Random {
  int nextIntRange(int min, int max) {
    assert(min<=max);
    if(min == max) return min;
    return min + Random().nextInt(max - min);
  }
}