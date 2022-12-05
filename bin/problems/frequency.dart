//
// ======>> TO FIND THE FREQUENCY OF EACH ELEMENT
//
void main() {
  List<String> arr = ['A', 'P', 'P', 'L', 'E'];
  String str = 'APPLE';
  // --->>> to get frequency of each characters in List<String>
  Frequency.getFrequencyOfListOfString(arr);
  // --->>> to get frequency of each characters in String
  Frequency.getFrequencyOfString(str);
}

class Frequency {
  static void getFrequencyOfListOfString(List<String> arr) {
    List<int> temp = List.generate(arr.length, (index) => -1);
    for (int i = 0; i < arr.length; i++) {
      int count = 0;
      for (int j = 0; j < arr.length; j++) {
        if (arr[i] == arr[j]) {
          count++;
          if (count > 1) {
            temp[j] = 0;
          }
        }
      }
      if (temp[i] != 0) {
        print(arr[i] + count.toString());
      }
    }
  }

  static void getFrequencyOfString(String str) {
    final Map<String, int> track = {};
    for (int i = 0; i < str.length; i++) {
      if (track[str[i]] != null) {
        track[str[i]] = (track[str[i]]! + 1);
      } else {
        track[str[i]] = 1;
      }
    }
    print(track);
  }
}
