require('pp')

l = [1,2,3]
l2 = [4,5,6]

# Arrays can do sets
pp l.union(l2)
pp l.intersection(l2)

# Stacks with push and pop

# Queues with unshift and pop
l.unshift(0)
pp l