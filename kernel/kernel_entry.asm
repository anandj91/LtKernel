; Ensures that we jump straight into the kernel's entry function
[bits 32]			; We are in protected mode by now, so use 32-bit instructions.
[extern main]			; Declare that we will be referencing the external symbol 'main',
				; so the linker can substitute the final address

call main			; Invoke the main function in C kernal
jmp $