# Via https://www.rubyguides.com/2017/04/memory-layout-of-an-object/

require 'fiddle'

a = [] 	      # An array
a.push("A")   # Works, obviously
p a.frozen?   # Naturally false

a.freeze

p a.frozen?   # True this time

begin
	a.push("B")   # As expected: error

rescue FrozenError => e
	p e
end
	
# Flip the pertinent bit
Fiddle::Pointer.new(a.object_id*2)[1] ^= 8 

p a.frozen?   # False! Defrosted!

# Flip it again.
Fiddle::Pointer.new(a.object_id*2)[1] ^= 8

p a.frozen?   # Back to true
