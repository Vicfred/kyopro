; uninhm
; https://www.spoj.com/problems/HELLO/
; implementation

section .text
  global _start

_start:
  mov eax,4
  mov ebx,1
  mov ecx,msg
  mov edx,len
  int 0x80

  mov eax,1
  xor ebx,ebx
  int 0x80

section .data
  msg db "Hello World!", 0xa
  len equ $-msg
