
#lineWidth = 50
#puts "Chapter 1:  Numbers".ljust(lineWidth/2) + "page 1".rjust(lineWidth/2)
#puts "Chapter 2:  Letters".ljust(lineWidth/2) + "page 72".rjust(lineWidth/2)
#puts "Chapter 3:  Variables".ljust(lineWidth/2) + "page 118".rjust(lineWidth/2)
# table_l =  ["Chapter  1:  Numbers", "Chapter 2:  Letters", "Chapter 3:  Variables"]
# table_r =   ["page 1", "page 72", "page 118"]
# puts table_l.map { |n|  n.ljust(lineWidth/2)} + table_r.map { |n|  n.rjust(lineWidth/2)}
lineWidth = 50
puts "Table of content".center(lineWidth)
table = [["Chapter  1:  Numbers", "page 1"], [ "Chapter 2:  Letters", "page 72"], ["Chapter 3:  Variables", "page 118"]]

table.each {|row|
left = row.first.ljust(lineWidth/2)
right = row.last.rjust(lineWidth/2)
puts left + right }
