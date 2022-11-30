void main() {
  AnagramString.isAnagram("Keep", "peeK");
  //AnagramString.isAnagram("Mother In Law", "Hitler Woman");
}

class AnagramString {
  static void isAnagram(String str1, String str2) {
    String s1 = str1.replaceAll("\\s", "");
    String s2 = str2.replaceAll("\\s", "");
    bool status = true;
    if (s1.length != s2.length) {
      status = false;
    } else {
      final List<String> arrayS1 = [];
      final List<String> arrayS2 = [];
      for (int i = 0; i < s1.length; i++) {
        arrayS1.add(s1[i]);
        arrayS2.add(s2[i]);
      }
      arrayS1.sort();
      arrayS2.sort();
      status = arrayS1 == arrayS2;
    }
    if (status) {
      print("$s1 and $s2 are anagrams");
    } else {
      print("$s1 and $s2 are not anagrams");
    }
  }
}
