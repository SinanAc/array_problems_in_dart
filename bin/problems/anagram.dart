void main() {
  String str1 = 'abcd';
  String str2 = 'abcc';
  print(Anagram.checkAnagram(str1, str2));
}

class Anagram {
  static bool checkAnagram(String str1, String str2) {
    if (str1.length != str2.length) {
      return false;
    }
    int count1 = 0;
    int count2 = 0;
    for (int i = 0; i < str1.length; i++) {
      for (int j = 0; j < str1.length; j++) {
        if (str1[i] == str1[j]) {
          count1++;
        }
      }
      for (int k = i; k < str2.length; k++) {
        for (int j = 0; j < str2.length; j++) {
          if (str2[i] == str2[j]) {
            count2++;
          }
        }
        if(count1==count2){
          continue;
        }else{
          return false;
        }
      }
      count1 = 0;
      count2 = 0;
    }
    return true;
  }
}
