outfilename = 'nums'
amt = ARGV[0].to_i
tenth = amt / 10

open(outfilename, 'w+') do |f|
	amt.times do |i|
		print "#{i/tenth*10}%..." if i % tenth == 0
		f.write(rand(1000))
		f.write("\r\n")
	end
end
puts "Done.\n"
