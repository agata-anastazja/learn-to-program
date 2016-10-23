def clock_method &block
  hours = Time.now.hour
  if hours > 12 or hours == 0
    hours = (hours -12).abs
  end
  hours.times {block.call}
end

clock_method do
  puts "Dong!"
end
