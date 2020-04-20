arr = ["a", "hello", [1,2,3], 1, 5, def fakemethod() nil end, 4]

p arr

p arr.map(&:class)

p arr.map(&:class).uniq
