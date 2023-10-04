# Array Sorting and Printing in MIPS Assembly

This MIPS assembly language code, generated in MARS IDE, is designed to demonstrate the sorting and printing of an array of integers. The code performs the following tasks:

1. Initializes an array of integers in the Data Segment.
2. Sorts the array in both increasing and decreasing order using a simple algorithm.
3. Prints the sorted arrays to the I/O text field.

## Code Explanation 

- The `.data` section defines an array `intArray` of size 10 to store integers, with space reserved for 10 integers.
- Integers are added to the array using `sw` instructions.
- The code initializes the array with integers from 1 to 10.
- After initializing the array, it prints the integers in both increasing and decreasing order.
- A space between the two sets of printed integers is provided for clarity.
