class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
       var map = [Int: Int]() 

       for i in 0..<numbers.count {
         var element = target - numbers[i]
         if map.keys.contains(element), let elementTarget = map[element] {
            return [elementTarget, i + 1]
         }
         map[numbers[i]] = i + 1
       }

       return []
    }
}
