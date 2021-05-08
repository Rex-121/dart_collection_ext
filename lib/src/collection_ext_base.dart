// TODO: Put public facing types in this file.

import 'dart:math';

extension Extension<T> on List<T> {

  void zip<Z>(Iterable<Z> other, Function(T, Z) zipper) {
    if (isEmpty || other.isEmpty) return;
    for (var i = 0; i < min(length, other.length); i++) {
      zipper(elementAt(i), other.elementAt(i));
    }
  }
}
