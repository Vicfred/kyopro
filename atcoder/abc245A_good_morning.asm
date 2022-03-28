;; uninhm
;; https://atcoder.jp/contests/abc245/tasks/abc245_a
;; implementation

section .text
  global _start

BUFSZ equ 15

SYS_read equ 0
SYS_write equ 1
SYS_exit equ 60
SUCESS equ 0
STDIN equ 0
STDOUT equ 1

read_int:
  mov rax, 0
  read_int_loop:
    mov rdi, 10
    mul rdi
    mov rsi, 0
    mov sil, byte [i]
    mov rdi, 0
    mov dil, byte [buf+rsi]
    add rax, rdi
    sub rax, '0'
    inc rsi
    mov byte [i], sil
    cmp byte [buf+rsi], '0'
    jl read_int_end
    cmp byte [buf+rsi], '9'
    jg read_int_end
    jmp read_int_loop
  read_int_end:
    ret

_start:
  mov rax, SYS_read
  mov rdi, STDIN
  mov rsi, buf
  mov rdx, BUFSZ
  syscall

  ;; Read the input

  call read_int
  mov [A], rax
  inc byte [i]

  call read_int
  mov [B], rax
  inc byte [i]

  call read_int
  mov [C], rax
  inc byte [i]

  call read_int
  mov [D], rax
  inc byte [i]

  ;; Solve the problem

  mov rax, [A]
  mov rdx, [C]
  cmp rax, rdx
  jl takahashi
  cmp rax, rdx
  jg aoki

  mov rax, [B]
  mov rdx, [D]
  cmp rax, rdx
  jg aoki
  jmp takahashi

takahashi:
  mov rax, SYS_write
  mov rdi, STDOUT
  mov rsi, strtaka
  mov rdx, strtaka_len
  syscall

  jmp end

aoki:
  mov rax, SYS_write
  mov rdi, STDOUT
  mov rsi, straoki
  mov rdx, straoki_len
  syscall

end:
  mov rax, SYS_exit
  mov rdi, SUCESS
  syscall

section .bss
  buf resb BUFSZ
  A resq 1
  B resq 1
  C resq 1
  D resq 1

section .data
  strtaka db "Takahashi", 10
  strtaka_len equ $ - strtaka
  straoki db "Aoki", 10
  straoki_len equ $ - straoki
  i dq 0
