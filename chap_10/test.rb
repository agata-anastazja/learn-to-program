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

  #We’ll take our list of words, find the
  #“smallest” word  and stick it at the
  # end of the already-sorted list.
  # All of the other words go into the still-unsorted
  while unsorted_array != []
    smallest_word, smallest_word_index = find_smallest(unsorted_array)
    unsorted_array.delete_at smallest_word_index
    sorted_array.push smallest_word
    dict_sort still_unsorted, sorted_array
  end
  sorted_array
end

print sort ["book", "aaaa", "azymut", "ARch"]

print sort ["book", "azymut", "ARch"]
