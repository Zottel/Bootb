;  Julius Echo
;code db '+[,.-------------]', 0
code db '+[[,.-------------]++++++++++.+++.]', 0

;  Fib
; This program doesn't terminate; you will have to kill it.
; Daniel B Cristofani (cristofdathevanetdotcom)
; http://www.hevanet.com/cristofd/brainfuck/
code db '>++++++++++>+>+[[+++++[>++++++++<-]>.<++++++[>--------<-]+<<<]>.>>[[-]<[>+<-]>>[<<+>+>-]<[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>[-]>+>+<<<-[>+<-]]]]]]]]]]]+>>>]<<<]',0

;  "Random" byte generator using the Rule 30 automaton.
; Doesn't terminate; you will have to kill it.
; To get x bytes you need 32x+4 cells.
; Turn off any newline translation!
; Daniel B Cristofani (cristofdathevanetdotcom)
; http://www.hevanet.com/cristofd/brainfuck/
;code db '>>>++[<++++++++[<[<++>-]>>[>>]+>>+[-[->>+<<<[<[<<]<+>]>[>[>>]]]<[>>[-]]>[>[-<<]>[<+<]]+<<]<[>+<-]>>-]<.[-]>>]', 0
