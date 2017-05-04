require 'pry'
# # What if we nested each_with_index loops?
# # outer loop: iterates over input items
# # inner loop: compares input item to each sorted item
# #
# unsorted_array = [1, 4, 3, 2]
# # destination array
# sorted_array = []
# puts first value of unsorted array in
# # # takes out first value from unsorted
# current_value = unsorted_array.shift
# sorted_array << current_value
# # iterates over unsorted array
# unsorted_array.each do |unsorted_item|
#   # iterates over sorted array
#   sorted_array.each_with_index do |sorted_item, index|
#     # compares unsorted item to sorted item
#     if unsorted_item < sorted_item
#       # places unsorted item behind sorted item
#       sorted_array.insert(sorted_item[index-1], unsorted_item)
#     elsif unsorted_item = sorted_item
#       # skips items already in the new array
#       next
#     else
#       # places unsorted item in front of sorted item
#       sorted_array.insert(sorted_item[index+1], unsorted_item)
#     end
#   end
#   sorted_array
# end
#
#
# puts sorted_array

class InsertionSort

  def sort(unsorted_array)
    sorted_array = []
    insert_index = nil
    sort_complete = false

    current_value = unsorted_array.shift
    sorted_array << current_value

    until sort_complete == true
      current_value = unsorted_array.shift
      # sorted_array << current_value
      sorted_array.each_with_index do |item, index|
        if current_value < item
          insert_index = index
          break
        else
          # the problem with 6 appears to be here
          # insert-index is -2 at this point according to pry - it should be -1
          # each time we iterate over the sorted items - if the current value is
          # larger, we reduce the insert_index by 1
          # because 6 is larger than 1, 3, and 4, we're reducing it 3 times
          # which makes its index -= 1
          # need to find a way to reset the index within the loop
          # or connect insert_index to the last item evaluted, not all items
          insert_index -= 1
        end
      end
      # binding.pry
      sorted_array.insert(insert_index, current_value)
      sort_complete = true if unsorted_array.empty?
    end
    puts sorted_array
  end
end
sorter = InsertionSort.new
sorter.sort([4,1,3,6,9])







#   unsorted_array.each do |unsorted_item|
#     # iterates over sorted array
#     sorted_array.each_with_index do |sorted_item, index|
#       # compares unsorted item to sorted item
#       if unsorted_item < sorted_item
#         # places unsorted item behind sorted item
#         sorted_array.insert(sorted_item[index-1], unsorted_item)
#       elsif unsorted_item = sorted_item
#         # skips items already in the new array
#         next
#       else
#         # places unsorted item in front of sorted item
#         sorted_array.insert(sorted_item[index+1], unsorted_item)
#       end
#     end
#     sorted_array
#   end
# end
#

  #
  # class Array
  #   def insertionsort!
  #     1.upto(length - 1) do |i|
  #       value = delete_at i
  #       j = i - 1
  #       j -= 1 while j >= 0 && value < self[j]
  #       insert(j + 1, value)
  #     end
  #     self
  #   end
  # end
  #
  # array = [7,6,5,9,8,4,3,1,2,0]
  # p array.insertionsort!
  # # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
