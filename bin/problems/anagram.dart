void main() {
  String str1 = 'abcd';
  String str2 = 'abce';
 print(Anagram.checkAnagram(str1, str2));
// final Map<String,int> trp = {'a':1,'b':2};
// print('${trp.keys.elementAt(0)}:${trp.values.elementAt(0)}');
}

class Anagram {
  static bool checkAnagram(String str1, String str2) {
    if (str1.length != str2.length) {
      return false;
    }
    final Map<String, int> track1 = {};
    for (int i = 0; i < str1.length; i++) {
      if (track1[str1[i]] != null) {
        track1[str1[i]] = (track1[str1[i]]! + 1);
      } else {
        track1[str1[i]] = 1;
      }
    }
    final Map<String, int> track2 = {};
    for (int i = 0; i < str1.length; i++) {
      if (track2[str2[i]] != null) {
        track2[str2[i]] = (track2[str2[i]]! + 1);
      } else {
        track2[str2[i]] = 1;
      }
    }
    if (track1.length != track2.length) {
      return false;
    }
    for (int i = 0; i < track1.length; i++) {
      bool found = false;
      for (int j = 0; j < track2.length; j++) {
        if("${track1.keys.elementAt(i)}:${track1.values.elementAt(i)}"=="${track2.keys.elementAt(j)}:${track2.values.elementAt(j)}"){
          found=true;
        }
      }
      if(!found){
        return false;
      }
    }
    return true;
  }
}
