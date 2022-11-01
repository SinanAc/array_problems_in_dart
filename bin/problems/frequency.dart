//
// ======>>  TO FIND THE FREQUENCY OF EACH ELEMENT
//
 void main() {
  List<String> arr = ['A','P','P','L','E'];
  List<int> temp = List.generate(arr.length, (index) => -1);
    for (int i = 0; i < arr.length; i++) {
      int count = 0;
    for (int j = 0; j <arr.length; j++) {
      if (arr[i] == arr[j]) {
        count++;
        if(count>1){
          temp[j]=0;
        }
      }
    }
    if(temp[i]!=0){
      print(arr[i]+count.toString());
    }
  }
 }