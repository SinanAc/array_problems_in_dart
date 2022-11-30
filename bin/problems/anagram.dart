void main() {
  AnagramString.isAnagram('abc', 'acb');
  AnagramString.isAnagram("Lawyer", "erylav");
}

class AnagramString {
  static void isAnagram(String str1, String str2) {
    String s1 = str1.toLowerCase();
    String s2 = str2.toLowerCase();
    bool status = true;
    if (s1.length != s2.length) {
      status = false;
    } else if (s1 == s2) {
      status = true;
    } else {
      final List<String> arrayS1 = s1.split('');
      final List<String> arrayS2 = s2.split('');
      arrayS1.sort();
      arrayS2.sort();
      String a = arrayS1.join();
      String b = arrayS2.join();
      status = a == b;
    }
    if (status) {
      print("$s1 and $s2 are anagrams");
    } else {
      print("$s1 and $s2 are not anagrams");
    }
  }
}
