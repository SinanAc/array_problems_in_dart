//
// ======>>  TO REVERSE ARRAY & STRING
//
void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6];
  // -->> to reverse an array
  Reversing.reverseArray(arr);
  // -->> to reverse a string
  String str = 'Hello';
  Reversing.reverseString(str);
}

class Reversing {
  static void reverseString(String str) {
    String reversed = '';
    for (int i = str.length - 1; i >= 0; i--) {
      reversed = reversed + str[i];
    }
    print(reversed);
  }

  static void reverseArray(List<int> arr) {
    for (int i = 0; i < arr.length / 2; i++) {
      int temp = arr[i];
      arr[i] = arr[arr.length - 1 - i];
      arr[arr.length - 1 - i] = temp;
    }
    print(arr);
  }
}
