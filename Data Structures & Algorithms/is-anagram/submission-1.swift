class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
       if String(s.sorted()) == String(t.sorted()){
         return true
       }
       return false
             
    }
}
