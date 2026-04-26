

.global main

.section .data
scan_fmt:   .string "%d"
print_fmt:  .string "The double is: %d\n"

.section .bss
.lcomm number, 4    


.section .text
main:
    pushq   %rbp
    movq    %rsp, %rbp


    leaq    scan_fmt(%rip), %rdi    # 1st argument (rdi): address of format string
    leaq    number(%rip), %rsi      # 2nd argument (rsi): address of the 'number' variable
    movl    $0, %eax                # Ensure eax is 0 (0 floating point arguments for variadic functions)
    call    scanf@PLT               # Call the scanf function via the Procedure Linkage Table


    movl    number(%rip), %eax      # Load the value of 'number' into eax
    addl    %eax, %eax              # Double it by adding eax to itself (eax = eax + eax)


    leaq    print_fmt(%rip), %rdi   # 1st argument (rdi): address of format string
    movl    %eax, %esi              # 2nd argument (esi): the doubled number from eax
    movl    $0, %eax                # Ensure eax is 0 (0 floating point arguments)
    call    printf@PLT              # Call the printf function via the Procedure Linkage Table


    movl    $0, %eax                # Set return value to 0
    popq    %rbp                    # Restore base pointer
    ret                             # Return from main

    
