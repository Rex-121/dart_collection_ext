import 'dart:math';

extension ZipExtension<T> on Iterable<T> {
  /// 压缩数组
  void zip<Z>(Iterable<Z> other, Function(T, Z) zipper) {
    zipWithIndex(other, (t, z, _) {
      zipper(t, z);
    });
  }

  /// 将2个数组压缩成一个
  void zipWithIndex<Z>(Iterable<Z> other, Function(T, Z, int) zipper) {
    if (isEmpty || other.isEmpty) return;
    for (var i = 0; i < min(length, other.length); i++) {
      zipper(elementAt(i), other.elementAt(i), i);
    }
  }

  /// 将2个数组压缩成一个
  List<K> zipped<Z, K>(Iterable<Z> other, K Function(T, Z) zipper) {
    return zippedWithIndex(other, (t, z, _) => zipper(t, z));
  }

  /// 将2个数组压缩成一个
  List<K> zippedWithIndex<Z, K>(
      Iterable<Z> other, K Function(T, Z, int) zipper) {
    var ks = <K>[];
    zipWithIndex(other, (t, z, i) => ks.add(zipper(t, z, i)));
    return ks;
  }
}

