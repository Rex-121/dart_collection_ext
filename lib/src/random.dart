import 'dart:math';

extension RandomExtension<T> on Iterable<T> {
  /// 随机一个元素
  T get randomElement {
    if (isEmpty) return null;
    if (length == 1) return first;
    return elementAt(Random().nextInt(length));
  }
}
