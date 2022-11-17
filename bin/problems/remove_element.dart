//
// ======>>  TO REMOVE ELEMENTS 
//
void main(){
  removeSecondLast();
}

// -->> to remove previous to the last element
void removeSecondLast(){
    List<int?> arr = [1,2,3,4,5,6];
    arr[arr.length-2]=arr[arr.length-1];
    arr[arr.length-1]=null;
    print('Answer : $arr'); 
}