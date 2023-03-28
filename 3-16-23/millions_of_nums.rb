# 3 arrays
# return a new array of all integers that occur in all 3 arrays
#     nums_1 = [1, 2, 4, 5, 8]
#     nums_2 = [2, 3, 5, 7, 9]
#     nums_3 = [1, 2, 5, 8, 9]
#  =>  [2, 5]
# iterate through nums_1, for each element check if it exists in nums_2, if no, next
# if it exists in nums_2, check if it exists in nums_3, if no, next
# if yes to all 3, add that integer to a new array, then move on to the next element

class Matches
  def initialize

  end
  #edge case if 3 arrays aren't entered
  def find_matches(array_1, array_2, array_3)
  #   new_array = []
  #   array_1.each do |num|
  #     if array_2.include?(num) && array_3.include?(num)
  #       new_array << num
  #     end
  #   end
  #   new_array
    (array_1 + array_2 + array_3)
    .tally
    .keep_if {|k,v| v == 3}
    .keys
    # array_1 & array_2 & array_3
  end
end

nums_1 = [1, 2, 4, 5, 8]
nums_2 = [2, 3, 5, 7, 9]
nums_3 = [1, 2, 5, 8, 9]


p Matches.new.find_matches(nums_1, nums_2, nums_3)