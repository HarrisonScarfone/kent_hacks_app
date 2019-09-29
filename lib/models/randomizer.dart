import 'dart:math';

class Randomizer {
  final _random = new Random();
  int next(int min, int max) => min + _random.nextInt(max - min);
}