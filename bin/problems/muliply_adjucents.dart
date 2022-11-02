//
// ======>>  TO MULTIPLY THE ADJUCENT VALUES 
//
void main(){
  List<int> arr = [1,2,3,4,5,6];
  List<int> results = [];
    for(int i=0; i<arr.length -1; i++) {
        results.add(arr[i]*arr[i+1]);
    }
    print('Answer : $results'); 
}