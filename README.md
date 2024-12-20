# Lua Recursive Table Traversal Inefficiency and Potential Stack Overflow

This repository demonstrates a potential issue with recursive table traversal in Lua. While the provided code doesn't explicitly cause an error in most cases, it highlights an inefficiency that can lead to performance problems or stack overflows when dealing with large and deeply nested tables.

The `bug.lua` file shows a function that recursively iterates through a table using `pairs`.  For moderately sized tables, this works fine. However, with extremely deep nesting, the recursive calls could exhaust the call stack, resulting in a stack overflow error.

The `bugSolution.lua` file offers a more efficient iterative approach using a queue or similar data structure to avoid the recursive function calls and greatly minimize the risk of stack overflow.