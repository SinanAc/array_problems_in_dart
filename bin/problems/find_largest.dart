//
// ======>>  TO FIND THE LARGEST VALUES 
//
void main(){
  List<int> arr = [1,2,31,3,34,4,5,6,189];
  // -->> to fing the largest value in the array
  int largest = arr[0];
    for(int i=0; i<arr.length; i++) {
        if(arr[i]>largest){
          largest = arr[i];
        }
    }
    print('Largest value in this array is : $largest'); 

  // -->> to fing the second largest value in the array  
      for(int i=0; i<arr.length-1; i++) {
        for(int j=i+1; j<arr.length; j++) {
          if(arr[i]<arr[j]){
            int temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
          }
        }
    }
    print('Second largest value in this array is : ${arr[1]}'); 
  
    // -->> another method to fing the largest value in the array
    // getting the largest value without using third variable
    // taking the largest value to the 0th position
    for(int i=0; i<arr.length; i++) {
        if(arr[0]<arr[i]){
          arr[0] = arr[i];
        }
    }
    print('Largest value in this array is : ${arr[0]}'); 
}