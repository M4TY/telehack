01 Dim output$ As String
02 Dim address$ As String
03 Dim position% as Number
04 Dim occurences% as Number
05 Dim increment% as Number
06 Dim readNum% as Number
07 Dim command$ as String
08 Dim route% as String
30 address$ = "uupath " + argv$(1)
40 th_exec address$, output$
50 Print output$
60 occurences% = TH_RE( output$, "!" , 1)
70 FOR i = 1 TO occurences%
80  position% = INSTR(output$, "!", increment%) - readNum%
85  Print position%
86  Print increment% + 1
90  route$ = MID$(output$, increment% + 1, position%)
100 increment% = increment% + position% + 1
110 readNum% = readNum% + position% + 1
120 command$ = "rlogin " + route$
130 th_exec command$
160 Next
command$ = "rlogin " + argv$(1)
170 th_exec command$
180 th_exec "clear"