10 PRINT "(CLR/HOME)"
11 V=53248
12 POKE V+21,4 : REM enable sprite 2
13 POKE 2042,5
20 FOR N=0 to 50: READ Q : POKE 832+N,Q: NEXT
30 X = 1 : Y = 1
40 DX = 1 : DY = 1
50 POKE 1042+ X + 40*Y,11
60 FOR T = 1 TO 10 : NEXT
70 POKE 1042 + X + 40*Y,32
80 X = X + DX
90 IF X < = 0 OR X >= 39 THEN DX = -DX
100 Y = Y + DY
110 IF Y < = 0 or Y >= 24 THEN DY = -DY
120 GOTO 50
1000 REM
1010 DATA 120,0,232,0,28,232,0,68,251
1020 DATA 253,4,226,0,0,120,48,4,122,136
1030 DATA 0,125,136,4,125,8,0,117,8,4
1040 DATA 61,8,4,61,8,4,121,16,8,59
1050 DATA 160,8,59,64,16,63,165,176,56,56
1060 DATA 0,56,16,0,52,0,0,56,0,0
1070 DATA 60,0,0