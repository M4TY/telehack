Dim psoutput$ As String
10 th_exec "rlogin oracle"
20 th_exec "rlogin apple"
30 th_exec "rlogin monkey"
40 th_exec "ps", psoutput$
50 print psoutput$
60 th_exec "exit"
70 th_exec "exit"
80 th_exec "exit"
