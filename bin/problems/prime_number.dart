//
// ======>>  IS PRIME OR NOT
//
void main() {
  int value = 359;
  // -->> to check prime number
  print(IsPrime._isPrime(value));
}

class IsPrime {
  static bool _isPrime(int value) {
  int count = 0;
  for (int i = 1; i <= value; i++) {
    if (value % i == 0) {
      count++;
      if (count == 3) {
        break;
      }
    }
  }
  if (count == 2) {
    return true;
  }
  return false;
}
}
