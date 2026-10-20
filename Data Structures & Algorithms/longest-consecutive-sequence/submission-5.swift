class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var count = 1
        var maxCount = 1
        var numSet = Set(nums)
        if nums.count == 0 {
          return 0
        }

        for num in numSet {
          if numSet.contains(num - 1){
             continue
          } else {
            count = 1
            while numSet.contains(num + count) {
              count += 1
            }
          }

          if count > maxCount {
            maxCount = count
          }
        }

        return maxCount
    }
}
