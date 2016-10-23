$depth = 0
def log block_description, &block
  prefix = ' '*$depth
  puts prefix + 'Beginning "' + block_description + '"...'
  $depth = $depth + 1
  result = block.call
  $depth = $depth - 1
  puts prefix + '..."' + block_description + '" finished, returning: ' + result.to_s
end

log "lunch choice" do
  log "count to a million" do
    log "smile" do
      print "Go away!"
    end
    number = 0
    1000000.times do
    number = number + 1
  end
end
  "Korean"? "Korean" : "Fish & chips"
end
