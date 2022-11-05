//
// ======>>  TO REVERSE AN ARRAY 
//
void main(){
  // -->> reversing an array
  List<int> arr = [1,2,3,4,5,6];
  for(int i = 0; i < arr.length/2; i++){
    int temp = arr[i];
    arr[i] = arr[arr.length-1-i];
    arr[arr.length-1-i] = temp;
  }
  print(arr);

  // -->> reversing a string
  String str = 'Hello';
  String reversed = '';
  for(int i = str.length-1; i >=0; i--){
    reversed = reversed+str[i];
  }
  print(reversed) ;
}