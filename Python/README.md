# Python DSA Practice

Daily Python problems focused on data structures and algorithms.

## Rules

- DSA only.
- No built-in shortcuts (`sorted`, `.sort()`, `max`, `sum`, `.count()`, `.index()`, `bisect`, `Counter`) unless the problem allows it.
- Where it fits, solve it the slow way first, then optimise.

## Structure

```
python/
├── README.md
├── day01/solution.py
├── day02/solution.py
...
```

## Problem log

| Day | Problem | Notes |
|---|---|---|
| 1 | Count even elements | |
| 2 | Reverse a list | Manual swap loop, no `[::-1]` |
| 3 | Sum and average | No `sum()` |
| 4 | Second largest | Single pass, two tracking variables |
| 5 | Palindrome check | No `arr == arr[::-1]` |
| 6 | Count occurrences of a target | No `.count()` |
| 7 | Bubble sort | Nested loops |
| 8 | Circular buffer (`push`, `pop`) | No `collections.deque` |
| 9 | Linear search | No `.index()` or `in` |
| 10 | Binary search | No `bisect` |
| 11 | Selection sort | |
| 12 | Insertion sort | |
| 13 | Merge two sorted lists | Two pointers, no `sorted(a + b)` |
| 14 | Stack | `push`, `pop`, `peek`, `is_empty` |
| 15 | Queue | `enqueue`, `dequeue`, `front`, `is_empty` |
| 16 | Linked list (`Node` class) | `insert_end`, `print_list` |
| 17 | Linked list insert at front | `insert_front`, `print_list` |
| 18 | Find duplicates with a hash map | O(n²) first, then O(n) with a dict, no `Counter` |
| 19 | Balanced brackets with a stack | Handles `()[]{}` |

## Checklist

- [ ] Works on empty input and single-element input
- [ ] States time complexity
- [ ] No banned built-ins used
