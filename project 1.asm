    ; this, multiplied by $40, is the address
    ; in this case, the address is $2000
    ; $80 * $40 = $2000
    lda #$80
    sta $07f8

    ; enable sprite 0
    lda #$01
    sta $d015

    ; set x and y position
    lda #$80
    sta $d000
    sta $d001

loop:
    jmp loop

    byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
