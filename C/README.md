# C Practice

Daily C problems, starting from arrays and moving into pointers, structs, and linked structures.

## Rules

- Compile with `gcc -Wall -Wextra -g solution.c -o solution` and fix every warning.
- No library shortcuts. Write the logic yourself.
- From the linked-list days onward, always `free` what you `malloc`.

## Structure

```
c/
├── README.md
├── day01/solution.c
├── day02/solution.c
...
```

## Problem log

| Day | Problem | Function(s) |
|---|---|---|
| 1 | Count even elements in `int arr[8]` | `int count_even(int arr[8])` |
| 2 | Reverse an array in place (swap from both ends) | `void reverse(int arr[8])` |
| 3 | Sum and average | `int sum_array(int arr[8])`, average as `float` |
| 4 | Second largest, single pass | `int second_largest(int arr[8])` |
| 5 | Palindrome check | `int is_palindrome(int arr[8])` |
| 6 | Count occurrences of a target | `int count_occurrences(int arr[8], int target)` |
| 7 | Bubble sort | `void bubble_sort(int arr[8])` |
| 8 | Circular buffer FIFO (struct with `head`, `tail`, `count`) | `int push(int val)`, `int pop(int *val)` |
| 9 | Linear search | `int linear_search(int arr[8], int target)` |
| 10 | Binary search on a sorted array | `int binary_search(int arr[8], int target)` |
| 11 | Selection sort | `void selection_sort(int arr[8])` |
| 12 | Insertion sort | `void insertion_sort(int arr[8])` |
| 13 | Merge two sorted arrays | `void merge(int a[4], int b[4], int out[8])` |
| 14 | Array-backed stack | `push`, `pop`, `peek`, `is_empty` |
| 15 | Circular queue | `enqueue`, `dequeue`, `front_val`, `is_empty` |
| 16 | Singly linked list: insert at end, print | `insert_end`, `print_list` |
| 17 | Struct basics (`struct Student`), then insert at front | `insert_front`, `print_list` |
| 18 | Insert at end of a linked list | `struct Node* insert_end(struct Node* head, int val)` |
| 19 | Delete a node by value | `struct Node* delete_node(struct Node* head, int val)` |

## Checklist

- [ ] Compiles with no warnings
- [ ] Tested with edge cases (empty list, one element, value not found)
- [ ] All allocated memory freed
