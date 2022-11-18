//
// ======>>  PRIME NUMBER PROBLEMS
//
void main() {
  //List<int> array = [23,45,76,89,106,344,789];
  int value = 359;
  print(isPrime(value));
}

// -->> to check prime number
bool isPrime(int value) {
  int count = 0;
  for (int i = 1; i <= value; i++) {
    if (value % i == 0){
      count++;
      print(i);
      if(count==3){
        break;
      }
    }
  }
  if (count == 2) {
    return true;
  }
  return false;
}
