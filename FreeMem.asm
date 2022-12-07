;
; DISPLAY FREE MEMORY SPACE
;
ARRAYEND     = $31
STRGSTRT     = $33
;
VIDEO        = 1024
COLOR        = $D800
;
CLRCODE      = 7 ; YELLOW
;
IRQVEC       = $314
IRQOLD       = $EA31
;
INIT    *= $828
      SEI
      LDA #<FREE
      LDY #>FREE
      STA IRQVEC
      STY IRQVEC+1
      CLI
      RTS
;
FREE  SEC
      LDA STRGSTRT
      SBC ARRAYEND
      PHP

      LDY #37
      JSR DISPLAY
      PLP
      LDA STRGSTRT+1
      SBC ARRAYEND+1
      LDY #35
      JSR DISPLAY
      JMP IRQOLD
;
DISPLAY PHA
      LSR
      LSR
      LSR
      LSR
      JSR ASCII
      PLA
;
ASCII AND #%1111
      CMP #10
      BCC SMALLER
      ADC #6
SMALLER ADC #"0"
      AND #%111111
      STA VIDEO,Y
      LDA #CLRCODE
      STA COLOR,Y
      INY
      RTS
