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
  
}