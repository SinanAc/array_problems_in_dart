//
// ======>>  TO FIND FIRST TWO VALUES WHICH ARE SUM OF THE TARGET IN ARRAY
//
void main() {
  print(Solution.twoSum([2, 4, 6, 7, 1], 11));
}

class Solution {
  static List<int> twoSum(List<int> nums, int target) {
    List<int> result = [];
    for (int i = 0; i < nums.length - 1; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          result.addAll([nums[i], nums[j]]);
          return result;
        }
      }
    }
    return result;
  }
}
