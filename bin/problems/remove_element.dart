//
// ======>>  TO REMOVE ELEMENTS
//
void main() {
  List<int?> arr = [1, 2, 3, 4, 5, 6];
  // -->> to remove previous to the last element
  Remove._removeSecondLast(arr);
  // -->> to remove prime number
  Remove._removePrime(arr);
}

class Remove {
  static void _removePrime(List<int?> arr) {
    for (int i = 0; i < arr.length; i++) {
      int count = 0;
      if (arr[i] == null) {
        break;
      }
      for (int j = 1; j <= arr[i]!; j++) {
        if (arr[i]!%j == 0) {
          count++;
        }
      }
      if (count == 2) {
        arr.remove(arr[i]);
        i--;
      }
    }
    print(arr);
  }

  static void _removeSecondLast(List<int?> arr) {
    arr[arr.length - 2] = arr[arr.length - 1];
    arr[arr.length - 1] = null;
    print('Answer : $arr');
  }
}
