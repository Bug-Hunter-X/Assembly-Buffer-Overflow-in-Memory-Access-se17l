mov ecx, [some_variable_holding_ecx_size] ; obtain size of array
mov eax, [ebx+ecx*4]

; Check if ecx is within valid bounds.  Adjust the 'max_ecx' value according to the allowed size of the array.
mov edi, ecx
mov esi, max_ecx ; Replace max_ecx with the actual maximum allowable value for ecx
cmp edi, esi
ja overflow_handler ; Jump to overflow handler if ecx is out of bounds

; ... rest of the code

overflow_handler:
; Handle the overflow error appropriately (e.g., return an error code, terminate the program, etc.)
mov eax, -1 ; Set an error code or similar
ret