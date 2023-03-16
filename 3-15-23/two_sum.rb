# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.

# Example 1:

# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
# Example 2:

# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# Example 3:

# Input: nums = [3,3], target = 6
# Output: [0,1]

# create a hash
# check first element in array, target - element = index we need
# check if that number exists in the hash, if not, store it
# if that number exists, return [that num's index, current index]

def two_sum(array, target)
  num_pairs = Hash.new

  array.each_with_index do |num, index|
    if num_pairs[target - num]
       return [num_pairs[target - num], index] 
    else
      num_pairs[num] = index
    end
  end
end

p two_sum([2,7,11,15], 9)
p two_sum([3,2,4], 6)
p two_sum([3,3], 6)
