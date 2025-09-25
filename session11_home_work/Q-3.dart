/* 
Given an array of integers nums sorted in ascending order, and an integer target, write a function to
search target in nums.
- If target exists, return its index. Otherwise, return -1.
- The algorithm must run in O(log n) time complexity.
Examples:
- Input: nums = [-1,0,3,5,9,12], target = 9 → Output: 4
Explanation: 9 exists in nums and its index is 4.
- Input: nums = [-1,0,3,5,9,12], target = 2 → Output: -1
Explanation: 2 does not exist in nums, so return -1.
*/

int search(List<int> nums, int target) {
  int start = 0;
  int end = nums.length - 1;

  while (start <= end) {
    int mid = (start + end) ~/ 2;
    if (nums[mid] == target) {
      return mid;
    } else if (nums[mid] < target) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }
  return -1;
}

void main() {
  List<int> nums = [-1, 0, 3, 5, 9, 12];
  int target = 9;
  int index = search(nums, target);
  if (index != -1) {
    print("Target $target found at index $index.");
  } else {
    print("Target $target not found in the array.");
  }
}
