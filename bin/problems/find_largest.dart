//
// ======>>  TO FIND THE LARGEST VALUES
//
void main() {
  List<int> arr = [1, 2, 3, 5, 24, 8, 4, 3, 4];
  // -->> to find the largest value in the array
  LargestValue.getLargetValue(arr);
  // -->> to find the second largest value in the array
  LargestValue.getSecondLarget(arr);
  // -->> to find the peak value which is larger than neighbours
  LargestValue.getPeakValueWhichIsLargerThanNeighbours(arr);
  // -->> another method to find the largest value in the array
  // getting the largest value without using third variable
  // taking the largest value to the 0th position
  LargestValue.getLargestByTakingToZeroth(arr);
}

class LargestValue {
  static void getLargetValue(List<int> arr) {
    int largest = arr[0];
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] > largest) {
        largest = arr[i];
      }
    }
    print('Largest value in this array is : $largest');
  }

  static void getSecondLarget(List<int> arr) {
    for (int i = 0; i < arr.length - 1; i++) {
      for (int j = i + 1; j < arr.length; j++) {
        if (arr[i] < arr[j]) {
          int temp = arr[i];
          arr[i] = arr[j];
          arr[j] = temp;
        }
      }
    }
    print('Second largest value in this array is : ${arr[1]}');
  }

  static void getPeakValueWhichIsLargerThanNeighbours(List<int> arr) {
    if (arr[0] > arr[1]) {
      print('The peak value which is larger than neighbours is : ${arr[0]}');
      return;
    }
    for (int i = 1; i < arr.length - 1; i++) {
      if (arr[i] > arr[i - 1] && arr[i] > arr[i + 1]) {
        print('The peak value which is larger than neighbours is : ${arr[i]}');
        return;
      }
    }
    if (arr[arr.length - 1] > arr[arr.length - 2]) {
      print(
        'The peak value which is larger than neighbours is : ${arr[arr.length - 1]}',
      );
      return;
    }
    print('No valid peak value!!');
  }

  static void getLargestByTakingToZeroth(List<int> arr) {
    for (int i = 0; i < arr.length; i++) {
      if (arr[0] < arr[i]) {
        arr[0] = arr[i];
      }
    }
    print('Largest value in this array is : ${arr[0]}');
  }
}
