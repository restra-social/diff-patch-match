import 'DiffMatchPatch.dart';
import 'dart:collection';
import 'dart:math';

void main() {
  DiffMatchPatch dmp = new DiffMatchPatch();
  List<Diff> d = dmp.diff_main('Hello World.', 'Goodbye World.');
  // Result: [(-1, "Hell"), (1, "G"), (0, "o"), (1, "odbye"), (0, " World.")]
  dmp.diff_cleanupSemantic(d);
  // Result: [(-1, "Hello"), (1, "Goodbye"), (0, " World.")]
  print(d);
}