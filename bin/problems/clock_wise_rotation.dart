//
// ======>> TO ROTATE THE ARRAYS
//
void main() {
  List<String> arr = ['A', 'P', 'P', 'L', 'E'];
  // --->>> to rotate the array clockwise
  Rotation.rotateArrayInClockWise(arr);
}

class Rotation {
  static void rotateArrayInClockWise(List<String> arr) {
    int rotations = 2;
    for (int i = 0; i < rotations; i++) {
      String temp = arr[arr.length - 1];
      for (int j = arr.length - 1; j > 0; j--) {
        arr[j] = arr[j - 1];
      }
      arr[0] = temp;
    }
    print(arr);
  }
}
