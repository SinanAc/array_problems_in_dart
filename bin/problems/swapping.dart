//
// ======>>  TO SWAP TWO ARRAYS
//
void main() {
  List<int> array1 = [10,20,30,40,50];
  List<int> array2 = [11,22,33,44,55];
 
  for (int i=0 ; i<array1.length ;i++){
    int temp = array1[i];
    array1[i]= array2[i];
    array2[i]= temp;
  }
 
  print('Arrays after swapping');
  print('Array1 : $array1');
  print('Array 2 : $array2');
 
}
