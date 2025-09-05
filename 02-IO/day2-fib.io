Fib := Object clone

Fib computeRecursive := method(n, if(n <2, n, self computeRecursive(n-1) + self computeRecursive(n-2)))

# Iterative version - with the help of Copilot
Fib computeIterative := method(n, a := 0; b := 1; for(i, 1,n, t := a; a := b; b := t + b); a)

fib := Fib clone

"Iterative version" println

fib computeIterative(1) println
fib computeIterative(2) println
fib computeIterative(3) println
fib computeIterative(4) println
fib computeIterative(5) println
fib computeIterative(6) println
fib computeIterative(7) println

"Recursive version" println

fib computeRecursive(1) println
fib computeRecursive(2) println
fib computeRecursive(3) println
fib computeRecursive(4) println
fib computeRecursive(5) println
fib computeRecursive(6) println
fib computeRecursive(7) println