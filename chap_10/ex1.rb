def sort some_array # This "wraps" recursive_sort.

recursive_sort some_array, []
end

def recursive_sort sorted_array, unsorted_array
  while unsorted_array =! []
    sorted_array.push(unsorted_array.min)
    unsorted_array.delete(unsorted_array.min)
    recursive_sort unsorted_array, sorted_array
  end
  sorted_array
end


puts sort [ "apple", "are", "peach", "pear", "Apple", "Academia"]
