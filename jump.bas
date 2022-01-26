01 Dim output$ As String
02 Dim address$ As String
03 Dim position% as Number
04 Dim increment% as Number
30 address$ = "uupath " + argv$(1)
40 th_exec address$, output$
50 Print output$
60 position% = POS(output$, "!")
65 Print position%
70 Print MID$(output$, 1, position% - 1)
80 increment% += position% - 1