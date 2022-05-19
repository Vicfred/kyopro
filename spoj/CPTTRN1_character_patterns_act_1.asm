;; uninhm
;; https://www.spoj.com/problems/CPTTRN1/
;; implementation

section .text
  global _start

BUF_SIZE equ 256

SYS_read equ 3
SYS_write equ 4
SYS_exit equ 1
SUCCESS equ 0
STDIN equ 0
STDOUT equ 1

_start:
  call read_int
  mov [T], eax

  jmp main_loop
  extra_line:
    mov byte [char], 10
    call print_char
  main_loop:
    call read_int
    mov [H], eax
    call read_int
    mov [W], eax

    mov dword [row_i], 0
    row_loop:
      mov dword [col_i], 0
      mov edi, [row_i]
      and edi, 1
      col_loop:
        mov eax, [col_i]
        and eax, 1
        cmp edi, eax
        je print_asterisk
        print_period:
          mov byte [char], '.'
          call print_char
          jmp print_ast_or_period_end
        print_asterisk:
          mov byte [char], '*'
          call print_char
        print_ast_or_period_end:

        inc dword [col_i]
        mov eax, [col_i]
        cmp eax, dword [W]
        jl col_loop

      mov byte [char], 10
      call print_char

      inc dword [row_i]
      mov eax, [row_i]
      cmp eax, dword [H]
      jl row_loop

    dec dword [T]
    mov eax, [T]
    cmp eax, 0
    jg extra_line

  mov eax, SYS_exit
  mov ebx, SUCCESS
  int 0x80


read_int:
  call check_buf_overflow
  mov eax, 0
  mov ebx, buf
  mov esi, [buf_i]
  jmp dont_skip
  skip_one:
    inc esi
    mov [buf_i], esi
    call check_buf_overflow
  dont_skip:
    mov cl, byte [ebx+esi]
    cmp cl, '0'
    jl skip_one
    cmp cl, '9'
    jg skip_one

  read_int_loop:
    mov edx, 10
    mul edx
    xor ecx, ecx
    mov cl, [ebx+esi]
    add eax, ecx
    sub eax, '0'
    inc esi
    mov [buf_i], esi
    call check_buf_overflow
    mov cl, byte [ebx+esi]
    cmp cl, '0'
    jl read_int_loop_end
    cmp cl, '9'
    jg read_int_loop_end
    jmp read_int_loop
  read_int_loop_end:
    ret

check_buf_overflow:
  push eax
  mov eax, [buf_i]
  cmp eax, dword [readed]
  jl dont_reread

  push ebx
  push ecx
  push edx
  mov dword [buf_i], 0
  xor esi, esi
  mov eax, SYS_read
  mov ebx, STDIN
  mov ecx, buf
  mov edx, BUF_SIZE
  int 0x80
  mov [readed], eax
  pop edx
  pop ecx
  pop ebx
  pop eax
  ret

  dont_reread:
    pop eax
    ret

print_char:
  mov eax, SYS_write
  mov ebx, STDOUT
  mov ecx, char
  mov edx, 1
  int 0x80
  ret

section .bss
  buf resb BUF_SIZE
  buf_i resd 1
  T resd 1
  H resd 1
  W resd 1
  col_i resd 1
  row_i resd 1
  char resb 1
  readed resd 1
