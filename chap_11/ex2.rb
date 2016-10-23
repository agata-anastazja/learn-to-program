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

all_music = shuffle(Dir['/Users/Agata/Music/classical/**/*.mp3'])

File.open 'my_playlist.m3u', 'w' do |f|
  all_music.each do |mp3|
  f.write mp3+"\n"
  end
end
