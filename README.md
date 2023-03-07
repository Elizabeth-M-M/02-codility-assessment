# Toy Problems

## Challenge 1: Broken Sequence
### problem 
Receiving some random elements as a space-delimited string, check if the elements are part of an ascending sequence of integers starting with 1, with an increment of 1 (e.g. 1, 2, 3, 4).

### BDD (Behavior Driven Development)
Given: A space-delimited string
When: The elements of the string are sorted
Then: Return 0 if the elements can form such a sequence, and no number is missing,
1 if there are any non-numeric elements in the input
n if the elements are part of such a sequence, but some numbers are missing, and n is the lowest of them 

#### Example 1
Given: "1 2 4 3"
Return: 0
Given: "1 3 2 5"
Return: 4

### PseudoCode:

#### Code
1. Check if string contains non-numeric elements. If so, return 1.
2. If not, split the string and convert all elements to integers and store them in variable `arr`
3. Create variable `e` representing the expected_sequence of the `arr` taking the smallest and the largest in a range and creating an array.
4. Create variable `s` representing sorted `arr` from smallest to largest
5. Compare `e` to `s`. If equal, return 0. If not return the first index of the output.


## Challenge2: Find out whether the shape is a cube
### Problem
Given the volume and the length of a single side, find out whether it is a cube.

### BDD (Behavior Driven Development)
Given: Volume and a length of a side
When: Checking if cuboid has equal sides
Then: Returns true if cuboid has equal sides and false otherwise or if it has invalid numbers

### PseudoCode:

#### Code
1. Check if `s`, the provided side is a positive number. If it's not, return false.
2. If it's true, find the cuberoot of the `vol`, volume, to get the value of the sides, store the value in `side` variable.
3. Compare `s` with `side`. If equal, return true. Return false otherwise.

The code is available in index.rb