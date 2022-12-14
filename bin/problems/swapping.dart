//
// ======>> TO SWAP TWO ARRAYS
//
void main() {
  List<int> array1 = [10, 20, 30, 40, 50];
  List<int> array2 = [11, 22, 33, 44, 55];
  // -->> array swapping using for loop
  Swapping.arraySwappingByLoop(array1, array2);
  // -->> array swapping using temp array
  Swapping.arraySwappingByTemp(array1, array2);
  // -->> string swapping without using third variable
  String a = 'hello';
  String b = 'world';
  Swapping.stringSwap(a, b);
}

class Swapping {
  static void arraySwappingByLoop(List<int> array1, List<int> array2) {
    for (int i = 0; i < array1.length; i++) {
      int temp = array1[i];
      array1[i] = array2[i];
      array2[i] = temp;
    }
    print('Arrays after swapping');
    print('Array1 : $array1');
    print('Array 2 : $array2');
  }

  static void arraySwappingByTemp(List<int> array1, List<int> array2) {
    List<int> tempArray = array1;
    array1 = array2;
    array2 = tempArray;
    print('Arrays after swapping');
    print('Array1 : $array1');
    print('Array 2 : $array2');
  }

  static void stringSwap(String a, String b) {
    a = a + b;
    b = a.substring(0, a.length - b.length);
    a = a.substring(a.length - b.length, a.length);
    print('Strings after swapping');
    print('String1 :$a');
    print('String2 :$b');
  }
}
