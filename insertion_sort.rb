unsorted_array = [4,1,3,6,9,27,845,2345,5,7,8]

sorted_array = []

current_value = unsorted_array.shift

sorted_array << current_value

until unsorted_array.empty?

insert_index = 0

current_value = unsorted_array.shift

sorted_array.each_with_index do |item, index|
    if current_value < item
      insert_index = index
      break
    else
      insert_index += 1
      end
    end
  sorted_array.insert(insert_index, current_value)
end

puts sorted_array
