.data
mesg: .asciiz "Hello World\n"
.text
.globl main
main:
li $v0,4 # setting v0 to 4, the processor knows we need to print string to the console when executing a syscall
la $a0,mesg # the staring address of the string will be assigned to the register a0
syscall # the processor reads the memory byte by byte from the address in a0
# the corresponding character will be displayed one by one until the end of string character (\0) is read