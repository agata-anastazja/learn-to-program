def shuffle arr
new_arr = []
  while arr != []
    len = arr.count
    shuffled = arr[rand(len)]
    new_arr.push shuffled
    arr.delete(shuffled)
  end
  print new_arr
end

 shuffle [ "apple", "peach", "pear", "cake", "ham"]
