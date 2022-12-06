//
// ======>> TO MULTIPLY THE ADJUCENTS
//
void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6];
  // --->>> to multiply adjucent values in the array
  Adjacents.multiplyAdjucents(arr);
}

class Adjacents {
  static void multiplyAdjucents(List<int> arr) {
    List<int> results = [];
    for (int i = 0; i < arr.length - 1; i++) {
      results.add(arr[i] * arr[i + 1]);
    }
    print('Answer: $results');
  }
}
