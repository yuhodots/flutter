// random numbers generator
import 'dart:math' as math;

void main() {
  print('Random number generator: Start');

  var rand = math.Random();
  Set<int> randomNumbers = {};
  for (var i = 0; i < 10; i++) {
    randomNumbers.add(rand.nextInt(100));
  }
  print(randomNumbers);
}
