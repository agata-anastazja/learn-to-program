=begin
 Test your method by sending it a code block. Inside the block,
 put another call to log, passing another block to it.
(This is called nesting.)
=end


def log block_description,  &block
  puts "Beginning " + block_description
  x = block.call.to_s
  puts block_description + " finished, returning: " + x
end



log "lunch choice " do
  log 'count to a million' do
    number = 0
    1000000.times do
      number = number + 1
    end
  end
  "Korean"? "Korean" : "Fish & chips"
end
