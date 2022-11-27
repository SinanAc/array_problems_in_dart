//
// ======>>  TO FIND THE FIRST DUPLICATE ELEMENT
//
void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1];
  Duplicate.getFirstDuplicate(arr);
}

class Duplicate {
  static void getFirstDuplicate(List<int> arr) {
    for (int i = 1; i < arr.length; i++) {
      for (int j = i - 1; j >= 0; j--) {
        if (arr[i] == arr[j]) {
          print(arr[i]);
        }
      }
    }
  }
}
