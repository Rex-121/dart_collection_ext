import 'dart:math';

extension Extension<T> on List<T> {
  void zip<Z>(Iterable<Z> other, Function(T, Z) zipper) {
    if (isEmpty || other.isEmpty) return;
    for (var i = 0; i < min(length, other.length); i++) {
      zipper(elementAt(i), other.elementAt(i));
    }
  }

  List<K> zipped<Z, K>(Iterable<Z> other, K Function(T, Z) zipper) {
    var ks = <K>[];
    zip(other, (t, z) => ks.add(zipper(t, z)));
    return ks;
  }
}
