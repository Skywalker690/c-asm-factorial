    .globl fact
    .text

# long long fact(int n)
fact:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp        # reserve space for locals

    movl %ecx, -4(%rbp)   # save n to local variable

    cmpl $1, -4(%rbp)
    jle .base_case        # if (n <= 1) return 1

    movl -4(%rbp), %eax   # eax = n
    decl %eax             # eax = n - 1
    movl %eax, %ecx       # set arg = n - 1
    call fact             # recursive call fact(n-1)
    
    movl -4(%rbp), %edx   # reload original n
    imull %edx, %eax      # eax = fact(n-1) * n
    jmp .done

.base_case:
    movl $1, %eax         # return 1

.done:
    leave
    ret
