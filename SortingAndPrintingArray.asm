#Array of Int - Without While Loop

.data
   intArray: .space 40          #Each int is 4 bit since we want have 10 int then we need to multiple 10 by 4.
   space: .asciiz "\n  \n"      #Space between my print out message.
.text
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Assigm the Integers  in a Array ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
addi $t0, $zero, 1
addi $t1, $zero, 2
addi $t2, $zero, 3
addi $t3, $zero, 4
addi $t4, $zero, 5
addi $t5, $zero, 6
addi $t6, $zero, 7
addi $t7, $zero, 8
addi $s0, $zero, 9
addi $s1, $zero, 10
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ index  = s2 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
addi $s2, $zero, 0
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Store Data ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
sw $t0, intArray($s2)				#add int 1 to the array
     addi $s2, $s2, 4 				#add 4 bit to the index of array
sw $t1, intArray($s2)				#add int 2 to the array
     addi $s2, $s2, 4		
sw $t2, intArray($s2)				#add int 3 to the array
     addi $s2, $s2, 4			
sw $t3, intArray($s2)				#add int 4 to the array
     addi $s2, $s2, 4		
sw $t4, intArray($s2)				#add int 5 to the array
     addi $s2, $s2, 4		
sw $t5, intArray($s2)				#add int 6 to the array
     addi $s2, $s2, 4		
sw $t6, intArray($s2)				#add int 7 to the array
     addi $s2, $s2, 4		
sw $t7, intArray($s2)				#add int 8 to the array
     addi $s2, $s2, 4		
sw $s0, intArray($s2)				#add int 9 to the array
     addi $s2, $s2, 4		
sw $s1, intArray($s2)				#add int 10 to the array
     addi $s2, $s2, 4		
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Store Data - Reverse ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
sw $s1, intArray($s2)				#add int 10 to the array
     addi $s2, $s2, 4 				#add 4 bit to the index of array
sw $s0, intArray($s2)				#add int 9 to the array
     addi $s2, $s2, 4		
sw $t7, intArray($s2)				#add int 8 to the array
     addi $s2, $s2, 4			
sw $t6, intArray($s2)				#add int 7 to the array
     addi $s2, $s2, 4		
sw $t5, intArray($s2)				#add int 6 to the array
     addi $s2, $s2, 4		
sw $t4, intArray($s2)				#add int 5 to the array
     addi $s2, $s2, 4		
sw $t3, intArray($s2)				#add int 4 to the array
     addi $s2, $s2, 4		
sw $t2, intArray($s2)				#add int 3 to the array
     addi $s2, $s2, 4		
sw $t1, intArray($s2)				#add int 2 to the array
     addi $s2, $s2, 4		
sw $t0, intArray($s2)				#add int 1 to the array
     addi $s2, $s2, 4	
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Print out ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#     
lw $s3, intArray($zero) 			#Load the word in the first location of myArray into $s3
#Print the index 0 wich is int 1
li $v0, 1			
addi $a0, $s3, 0 		
syscall
#Print the index 1 wich is int 2
li $v0, 1
addi $a0, $s3, 1 		
syscall
#Print the index 2 wich is int 3
li $v0, 1
addi $a0, $s3, 2 		
syscall
#Print the index 3 wich is int 4
li $v0, 1
addi $a0, $s3, 3 		
syscall
#Print the index 4 wich is int 5
li $v0, 1
addi $a0, $s3, 4 		
syscall
#Print the index 5 wich is int 6
li $v0, 1
addi $a0, $s3, 5 		
syscall
#Print the index 6 wich is int 7
li $v0, 1
addi $a0, $s3, 6 		
syscall
#Print the index 7 wich is int 8
li $v0, 1
addi $a0, $s3, 7 		
syscall
#Print the index 8 wich is int 9
li $v0, 1
addi $a0, $s3, 8 		
syscall
#Print the index 9 wich is int 10
li $v0, 1
addi $a0, $s3, 9 		
syscall

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Print out the inverse ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#     
li $v0, 4					#space between my 1-10 array and 10-1 array
la $a0, space
syscall

lw $s3, intArray($zero) 			#Load the word in the first location of myArray into $s3

#Print the index 9 wich is int 10
li $v0, 1			
addi $a0, $s3, 9 		
syscall
#Print the index 8 wich is int 9
li $v0, 1
addi $a0, $s3, 8 		
syscall
#Print the index 7 wich is int 8
li $v0, 1
addi $a0, $s3, 7 		
syscall
#Print the index 6 wich is int 7
li $v0, 1
addi $a0, $s3, 6 		
syscall
#Print the index 5 wich is int 6
li $v0, 1
addi $a0, $s3, 5		
syscall
#Print the index 4 wich is int 5
li $v0, 1
addi $a0, $s3, 4 		
syscall
#Print the index 3 wich is int 4
li $v0, 1
addi $a0, $s3, 3 		
syscall
#Print the index 2 wich is int 3
li $v0, 1
addi $a0, $s3, 2 		
syscall
#Print the index 1 wich is int 2
li $v0, 1
addi $a0, $s3, 1		
syscall
#Print the index 0 wich is int 1
li $v0, 1
addi $a0, $s3, 0 		
syscall

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Code for Executing ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#     
li $v0, 10
syscall
