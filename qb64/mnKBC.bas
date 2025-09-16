NNKKCC:
upp:

Close #16
Cls

Screen 12
k = 1
For i = 1 To 100
    Color k

    If i <= 10 Then k = 10
    If i > 10 And i <= 20 Then k = 12
    If i > 20 And i <= 30 Then k = 9
    If i > 30 And i <= 40 Then k = 13
    If i > 40 And i <= 50 Then k = 11
    If i > 50 And i <= 60 Then k = 9
    If i > 60 And i <= 70 Then k = 10
    If i > 70 And i <= 80 Then k = 12
    If i > 80 And i <= 90 Then k = 9
    If i > 90 Then k = 13









    Line (i, i)-(632 - i, i)
    Line (i, i)-(i, 460 - i)
    Line (i, 460 - i)-(632 - i, 460 - i)
    Line (632 - i, i)-(632 - i, 460 - i)
Next



















Color 14
Locate 8, 33
Print "MAIN MENU"

Color 11
Locate 11, 28
Print "1--> PLAY NEW GAME"
Locate 12, 28
Print "2--> CHOOSE LEVEL"
Locate 13, 28
Print "3--> ADD NEW LEVEL"
Locate 14, 28
Print "4--> CORRECT QUESTIONS"
Locate 15, 28
Print "5--> DELETE LEVEL"


Color 13
Locate 17, 28
Input "PRESS 1,2,3......"; sd$
If Val(sd$) < 1 Or Val(sd$) > 5 Then GoTo upp

If Val(sd$) = 1 Then GoTo SST
If Val(sd$) = 2 Then GoTo LEVEL
If Val(sd$) = 3 Then GoTo ADDNEW
If Val(sd$) = 4 Then GoTo CORRECTION
If Val(sd$) = 5 Then GoTo DELL

SST:
QUES$ = "NARENDRA"
GoTo START



LEVEL:


Cls
Screen 12

For i = 1 To 100
    Color k
    If i <= 20 Then k = 10
    If i > 20 And i <= 40 Then k = 12
    If i > 40 And i <= 60 Then k = 11
    If i > 60 And i <= 80 Then k = 13
    If i > 80 Then k = 14

    Line (i, i)-(632 - i, i)
    Line (i, i)-(i, 460 - i)
    Line (i, 460 - i)-(632 - i, 460 - i)
    Line (632 - i, i)-(632 - i, 460 - i)




Next i


















al = 0
QW = 10
Open "NARENDRAKC" For Input As #44

Color 14
Locate 8, 32
Print "SELECT LEVEL"

Do While Not EOF(44)
    al = al + 1
    QW = QW + 1
    Input #44, LEV$
    Color 11
    Locate QW, 30
    Print al; "---> "; LEV$


Loop
Close #44

Color 13
Locate QW + 3, 30
Input "ENTER 1,2,3...."; abl$
If Val(abl$) < 1 Or Val(abl$) > al Then GoTo upp

Open "NARENDRAKC" For Input As #45
AH = 0
Do While Not EOF(45)
    Input #45, LEV$
    AH = AH + 1





    If AH = Val(abl$) Then QUES$ = LEV$
    If AH = Val(abl$) Then Exit Do


Loop

GoTo START













ADDNEW:




Cls
Screen 12

For i = 1 To 100
    Color k
    If i <= 20 Then k = 10
    If i > 20 And i <= 40 Then k = 12
    If i > 40 And i <= 60 Then k = 11
    If i > 60 And i <= 80 Then k = 13
    If i > 80 Then k = 14

    Line (i, i)-(632 - i, i)
    Line (i, i)-(i, 460 - i)
    Line (i, 460 - i)-(632 - i, 460 - i)
    Line (632 - i, i)-(632 - i, 460 - i)




Next i


wrn:
Color 10
Locate 15, 23
Input "ENTER LEVEL NAME"; nam$
If Len(nam$) < 1 Then
    Close #16
    GoTo upp
End If

Open "NARENDRAKC" For Append As #16






Write #16, nam$


Close #16













Open nam$ For Output As #11
Do While UCase$(AC$) <> "EXIT"
    Cls


    Screen 12

    For i = 1 To 300
        Color k
        If i <= 20 Then k = 10
        If i > 20 And i <= 40 Then k = 12
        If i > 40 And i <= 60 Then k = 11
        If i > 60 Then k = 15

        Line (i, i)-(632 - i, i)
        Line (i, i)-(i, 460 - i)
        Line (i, 460 - i)-(632 - i, 460 - i)
        Line (632 - i, i)-(632 - i, 460 - i)




    Next i







    Color 14
    Locate 5, 30
    Print UCase$(nam$)
    Color 13
    Locate 7, 16
    Input "ENTER QUES."; A$
    Color 11
    Locate 11, 21
    Input "ENTER OPT.a"; B$
    Locate 13, 21
    Input "ENTER OPT.b"; C$
    Locate 15, 21
    Input "ENTER OPT.c"; D$
    Locate 17, 21
    Input "ENTER OPT.d"; E$
    Locate 20, 20
    Color 12
    Input "ENTER CORRECT ANS A,B,C..."; f$
    Write #11, A$, B$, C$, D$, E$, f$
    Locate 23, 17
    Color 10
    Input "To Continue press ENTER else type EXIT"; AC$
Loop
Close #11
GoTo upp













CORRECTION:




invalid:


Cls





Screen 12

For i = 1 To 100
    Color 11

    Line (i, i)-(632 - i, i)
    Line (i, i)-(i, 460 - i)
    Line (i, 460 - i)-(632 - i, 460 - i)
    Line (632 - i, i)-(632 - i, 460 - i)




Next i




















ab = 0
JK = 8
Color 14
Locate 8, 31
Print "CORRECT QUESTION"
Open "narendrakc" For Input As #6
Do While Not EOF(6)
    Input #6, fg$
    JK = JK + 1
    Color 13
    Locate JK + 1, 31

    ab = ab + 1
    Print ab; "--->"; fg$


Loop
Close #6
Color 10
Locate JK + 4, 29
Input "ENTER LEVEL 1,2,3..."; ar$

If Val(ar$) < 1 Or Val(ar$) > ab Then GoTo upp
















Open "NARENDRAKC" For Input As #90
BC = 0
Do While Not EOF(90)
    BC = BC + 1
    Input #90, FL$
    If Val(ar$) = BC Then
        ar$ = UCase$(FL$)
        Exit Do
    End If


Loop
Close #90










plr:

Cls















Screen 12

For i = 1 To 100
    Color 13


    Line (i, i)-(632 - i, i)
    Line (i, i)-(i, 460 - i)
    Line (i, 460 - i)-(632 - i, 460 - i)
    Line (632 - i, i)-(632 - i, 460 - i)




Next i







Color 14

Locate 10, 32

Print "CORRECTION"
Color 11
Locate 13, 27
Print "1---> DELETE QUESTION"
Locate 15, 27
Print "2---> CORRECT QUESTION"
Color 10
Locate 18, 30
Input "ENTER 1,2..."; awp$
If Val(awp$) < 1 Or Val(awp$) > 2 Then GoTo upp
If Val(awp$) = 1 Then GoTo DELQQ
If Val(awp$) = 2 Then GoTo COQEE

DELQQ:
Open ar$ For Input As #67
Open "TEPP" For Output As #77
A = 0
Do While Not EOF(67)
    Cls









    Screen 12

    For i = 1 To 100
        Color k
        If i <= 30 Then k = 11
        If i > 30 And i <= 60 Then k = 12
        If i > 60 And i <= 90 Then k = 10

        If i > 90 Then k = 9

        Line (i, i)-(632 - i, i)
        Line (i, i)-(i, 460 - i)
        Line (i, 460 - i)-(632 - i, 460 - i)
        Line (632 - i, i)-(632 - i, 460 - i)




    Next i


    Color 14
    Locate 8, 35
    Print "DELETE"






    Input #67, A$, B$, C$, D$, E$, f$
    A = A + 1
    Color 13
    Locate 10, 16
    A$ = UCase$(A$)
    LM = Len(A$)
    If LM > 40 Then

        Print "Q."; A; " "; Mid$(A$, 1, 40)
        Locate 11, 22
        Print Mid$(A$, 41, 40)
    Else
        Print "Q."; A; " "; A$

    End If
    Color 11
    Locate 12, 23
    Print "a> "; B$
    Locate 13, 23
    Print "b> "; C$
    Locate 14, 23
    Print "c> "; D$
    Locate 15, 23
    Print "d> "; E$
    Locate 17, 22
    Color 12
    Print "Correct opt.> "; f$
    Locate 18, 22
    Color 10
    Input "To Del Press D / ENTER"; sk$
    If UCase$(sk$) = "D" Then GoTo ddll

    Write #77, A$, B$, C$, D$, E$, f$
    ddll:
Loop
Close #67, #77
Kill ar$
Name "TEPP" As ar$




GoTo upp

























COQEE:
Cls


gj = 0

Open ar$ For Input As 12
Open "TEMP" For Output As 13

Do While Not EOF(12)
    gj = gj + 1
    Cls








    Screen 12

    For i = 1 To 50
        Color 10


        Line (i, i)-(632 - i, i)
        Line (i, i)-(i, 460 - i)
        Line (i, 460 - i)-(632 - i, 460 - i)
        Line (632 - i, i)-(632 - i, 460 - i)




    Next i

    Color 14
    Locate 4, 32
    Print "CORRECT QUESTION"






    po = 27
    A = A + 1
    Input #12, A$, B$, C$, D$, E$, f$
    Color 13
    Locate 6, 8
    Print "Q."; gj; ">"; A$
    Color 11
    Locate 8, po
    Print "OPT.a> "; B$
    Locate 9, po
    Print "OPT.b> "; C$
    Locate 10, po
    Print "OPT.c> "; D$
    Locate 11, po
    Print "OPT.d> "; E$
    Locate 12, 23
    Color 12
    Print "CORRECT OPTION--->"; f$
    Locate 14, 17
    Color 10
    Input "To Correct Press 'C' / 'ENTER'"; cb$
    If UCase$(cb$) <> "C" Then GoTo ncor
    Locate 16, 10
    Color 13
    Input "Correct Ques"; A$
    Color 11
    Locate 19, po
    Input "Correct Opt.a"; B$
    Locate 20, po
    Input "Correct Opt.b"; C$
    Locate 21, po
    Input "Correct Opt.c"; D$
    Locate 22, po
    Input "Correct Opt.d"; E$
    Locate 23, 23
    Color 12
    Input "enter CORRECT OPTION "; E$
    ncor:

    Write #13, A$, B$, C$, D$, E$, f$
    Locate 25, 17

    Color 10


    Input "To Continue press ENTER/type EXIT"; JK$
    If UCase$(JK$) = "EXIT" Then GoTo MMM
Loop

MMM:
Do While Not EOF(12)

    Input #12, A$, B$, C$, D$, E$, f$
    Write #13, A$, B$, C$, D$, E$, f$

Loop


Close #12, #13

Kill ar$

Name "TEMP" As ar$



GoTo upp


DELL:
Cls
Open "NARENDRAKC" For Input As #76
ER = O
JK = 9
Cls





Locate 8, 35
Color 14
Print "DELETE LEVEL"




Screen 12

For i = 1 To 100
    Color 9

    Line (i, i)-(632 - i, i)
    Line (i, i)-(i, 460 - i)
    Line (i, 460 - i)-(632 - i, 460 - i)
    Line (632 - i, i)-(632 - i, 460 - i)




Next i









Do While Not EOF(76)

    Input #76, A$
    ER = ER + 1
    JK = JK + 1
    Color 11
    Locate JK, 25
    Print ER; "--->"; A$
Loop
Close #76


Locate JK + 2, 22
Color 12

Input "ENTER LEVEL NAME"; DLN$

Open "NARENDRAKC" For Input As #98
Open "TEMPP" For Output As #99
Do While Not EOF(98)
    Input #98, A$
    If UCase$(A$) <> UCase$(DLN$) Then Write #99, A$
Loop
Close #98, #99
Kill "NARENDRAKC"
Name "TEMPP" As "NARENDRAKC"
Kill DLN$


GoTo upp








































Cls

START:

Screen 0

Open QUES$ For Input As #1
C = 0
MKR = 0
Do While Not EOF(1)
    Cls

    Input #1, A$, B$, C$, D$, E$, f$
    ma$ = Chr$(3)



    Color 14

    Locate 3, 25
    Print "WELCOME TO QUIZ WIZARD"
    Locate 5, 31
    Print "DESIGNED BY"
    Locate 6, 32
    Print "NARENDRA"


    Color 30
    Locate 1, 2
    Print String$(78, "*")
    Locate 23, 2
    Print String$(78, "*")

    Rem      LOCATE 23, 2
    Rem     PRINT "*"

    For i = 2 To 23
        Locate i, 2
        Print "*"
        Locate i, 79
        Print "*"
    Next
    ab$ = Chr$(2)
    Color 26
    Locate 2, 4
    Print String$(73, ab$)
    Locate 22, 4
    Print String$(73, ab$)

    For j = 2 To 22
        Locate j, 4
        Print ab$
        Locate j, 76
        Print ab$
    Next j



    Color 12


    Locate 8, 10: Print String$(57, ma$)
    For i = 9 To 19
        Locate i, 10: Print String$(1, ma$)
        Locate i, 66: Print String$(1, ma$)

    Next

    Locate 20, 10: Print String$(57, ma$)
    Locate 10, 17
    Color 11
    Play "a"


    A$ = UCase$(A$)
    B$ = UCase$(B$)
    C$ = UCase$(C$)
    D$ = UCase$(D$)
    E$ = UCase$(E$)
    f$ = UCase$(f$)

    MKR = MKR + 1
    MKR$ = "Q." + Str$(MKR) + ">"
    L = Len(A$)
    If L > 40 Then
        Locate 10, 17
        Print MKR$; Mid$(A$, 1, 40)
        Locate 11, 17
        Print Mid$(A$, 41, 40)
    Else
        Print MKR$; A$
    End If


    BC$ = Chr$(1)
    Locate 7, 62: Print String$(5 - C, BC$)




    Color 3

    Locate 12, 17
    Print "a> "; B$;
    Locate 12, 40
    Print "b> "; C$;
    Locate 13, 17
    Print "c> "; D$;
    Locate 13, 40
    Print "d> "; E$;

    Color 11

    Locate 15, 20
    Color 9

    Input " ENTER YOUR ANS"; G$
    G$ = UCase$(G$)
    Play "c"
    N = N + 1
    If G$ <> f$ Then



        Color 12

        C = C + 1
        Locate 15, 45

        Play "a"
        Print "WRONG"






        Locate 16, 32
        Color 5
        Print "CORRECT ANS="; f$
        Color 14

        Locate 18, 20


        Input "****TO continue press enter****"; RND$
    End If

    If C = 5 Then Exit Do

    If G$ = f$ Then
        S = S + 100

        Locate 16, 32

        Play "c"


        Locate 15, 45
        Color 12
        Print "CORRECT"


        Color 13

        Locate 16, 33
        Print "CONGRATS!!"
        Locate 18, 20
        Color 14
        Input "****To cotinue press enter****"; RND$
    End If

Loop
Cls

Locate 20, 15: Print String$(45, ma$)





Color 12

Locate 8, 15: Print String$(45, ma$)
For i = 9 To 19
    Locate i, 15: Print String$(1, ma$)
    Locate i, 59: Print String$(1, ma$)

Next

Locate 20, 15: Print String$(45, ma$)











Color 11

If C = 5 Then
    Locate 10, 20
    Print "SORRY"
    Locate 11, 20
    Print "GAME OVER"
    Locate 12, 20
    Print "YOUR HIGHEST SCORE="; S
    Locate 13, 20
    Print "NO.OF ASKED QUES="; N
    Locate 14, 20
    Print "NO OF CORRECT ANS="; N - 5
Else



    Locate 10, 20
    Print "CONGRATULATION"
    Locate 11, 20
    Print "YOU HAVE WON THE GAME"
    Locate 12, 20
    Print "YOUR HIGHEST SCORE= "; S
    Locate 13, 20
    Print "NO. OF ASKED QUES="; N
    Locate 14, 20
    Print "NO OF CORRECT ANS="; N - C
End If

Close #1
Color 26
Locate 16, 19
Input "To Play Again Press ENTER / EXIT"; RT$
If UCase$(RT$) <> "EXIT" Then GoTo NNKKCC

End











