# Dart集合拓展

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

```dart
import 'package:collection_ext/collection_ext.dart';

/// zip
[1, 1, 1, 1, 1].zip([3, 4, 5], (a, b) => {print(a + b)});//4,5,6

/// zipped
[1, 1, 1, 1, 1].zipped([3, 4, 5], (a, b) => a + b); /// == [4,5,6]

/// randomElement
[1, 2, 3, 4].randomElement;

```
