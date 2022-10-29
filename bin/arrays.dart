import 'problems/first_duplicate.dart';

void main() {
  // -->> find first duplicate element in the array
  List<int> arr = [1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1];
  final firstDuplicateValue = findFirstDuplicate(arr);
  print(firstDuplicateValue==0?'all values are unique':firstDuplicateValue);
}
