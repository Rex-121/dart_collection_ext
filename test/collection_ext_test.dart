import 'package:collection_ext/collection_ext.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('First Test', () {
      [1, 1, 1, 1, 1].zip([
        3,
        4,
        5,
      ], (a, b) => {print(a + b)});

      print([1, 1, 1, 1, 1].zipped([3, 4, 5], (a, b) => a + b));
    });
  });

  group('Random of tests', () {
    test('Random Test', () {
      print([1, 2, 3, 4].randomElement);
      print([1, 2, 3, 4].randomElement);
      print([1, 2, 3, 4].randomElement);
      print([1, 2, 3, 4].randomElement);
      print([1, 2, 3, 4].randomElement);
      print([1, 2, 3, 4].randomElement);
      print([1, 2, 3, 4].randomElement);
    });
  });
}
