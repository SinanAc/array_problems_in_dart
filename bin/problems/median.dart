//
// ======>>  TO FIND MEDIAN
//
void main(){
  List<int> array = [23,45,76,89,106,344,789];
  print(findMedian(array));
}

// -->> to find the median of an array
int findMedian(List<int> array){
    if(array.length%2!=0){
      return array[(array.length)~/2.toInt()];
    }else{
      int a = ((array.length-1)~/2).toInt();
      return ((array[a]+array[a+1])~/2).toInt();
    }
}