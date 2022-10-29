int findFirstDuplicate(List arr){
    for (int i = 1; i < arr.length; i++) {
    for (int j = i-1; j >=0; j--) {
      if (arr[i] == arr[j]) {
        return arr[i];
      }
    }
  }
  return 0;
}