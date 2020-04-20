filename = ARGV[0]

numbers = open(filename).read.split
numbers.map!(&:to_i)

sum = 0

numbers.each do |n|
	sum += n
end

puts sum
