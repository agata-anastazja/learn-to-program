def sort some_array # This "wraps" recursive_sort.
  dict_sort some_array, []
end

def find_smallest(unsorted_array)
  candidate_word = unsorted_array[0]
  candidate_word_index = 0
  unsorted_array.each_with_index do |word, index|
    if word.downcase  < candidate_word.downcase
      candidate_word = word
      candidate_word_index = index
    end

  end
  return candidate_word, candidate_word_index
end

def dict_sort unsorted_array, sorted_array
  if unsorted_array == [] then
    sorted_array
  else
    smallest_word, smallest_word_index = find_smallest(unsorted_array)
    unsorted_array.delete_at smallest_word_index
    sorted_array.push smallest_word
    dict_sort unsorted_array, sorted_array
  end
end

print sort ["book", "aaaa", "azymut", "ARch"]

print sort ["book", "azymut", "ARch"]
