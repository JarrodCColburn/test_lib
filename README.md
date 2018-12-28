## This git repo is an example of issue I'm seeking assistance for.

My issue: I'm writing a library, but can't access any private objects from another file within my same library.

Example: (two files below, both in lib folder)

### lib/file_one.dart

```dart
// file: file_one.dart
library test_lib;

class TestClass {
  static String public = 'hello';
  static String _private = 'world';
}
```

### lib/file_two.dart
```dart
// file: file_two.dart
library test_lib; // same library header as 'file_one.dart'
import 'file_one.dart';

// this works
String success = TestClass.public; // success = 'hello'

// error: '_private' is not defined for 
// the TestClass
String fail = TestClass._private;
```
Notes: If I alter code to use part and part of keywords, instead of import, I'm able to access the private variables; however, I see that the [dart documentation recommends avoiding part directive](https://www.dartlang.org/guides/libraries/create-library-packages#organizing-a-library-package).