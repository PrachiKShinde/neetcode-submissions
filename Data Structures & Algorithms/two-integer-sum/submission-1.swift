class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
       var result = [Int: Int]()

       for i in 0..<nums.count { 
         let valueToSearch = target - nums[i]
         if result[valueToSearch] != nil {
            return [result[valueToSearch]!, i]
         }  
         result[nums[i]] = i
       } 
       return []
    }
}
