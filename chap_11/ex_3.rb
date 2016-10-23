def shuffle arr
new_arr = []
  while arr != []
    len = arr.count
    shuffled = arr[rand(len)]
    new_arr.push shuffled
    arr.delete(shuffled)
  end
  return new_arr
end

def music_shuffle filenames
  filenames = filenames.sort
  len = filenames.length
  first_half = filenames[0..(len/2)-1].shuffle
  second_half = filenames[(len/2)..len].shuffle
  filenames = first_half + second_half
  puts filenames
end


all_music = (Dir['/Users/Agata/Music/classical/**/*.mp3'])
music_shuffle all_music
