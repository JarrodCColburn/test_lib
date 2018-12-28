// file: file_two.dart
library test_lib; // same library as 'file_one.dart'
import './file_one.dart';

// this works
String success = TestClass.public; // success = 'hello'

// error: '_private' is not defined for 
// the TestClass
String fail = TestClass._private;