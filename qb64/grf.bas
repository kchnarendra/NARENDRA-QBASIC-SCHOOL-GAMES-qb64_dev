Screen 12
Input "HOW MANY POINTS DO YOU WANT TO TRANSFORM"; N


For k = 1 To 1









    Dim NAR#(N + 1)
    Dim NKC#(N + 1)
    Dim ONAR#(N)
    Dim ONKC#(N)
    For I = 1 To N
        Input "enter your points"; NAR#(I), NKC#(I)
    Next
    Cls


    For I = 1 To N
        NAR#(I) = NAR#(I) * 10
        NKC#(I) = NKC#(I) * 10

    Next
    For ff = 1 To N
        ONAR#(ff) = NAR#(ff)
        ONKC#(ff) = NKC#(ff)
    Next ff

















    For I = 1 To 50
        Color 7
        a = a + 10
        b = b + 10
        Line (a, 10)-(b, 400)
    Next

    For j = 1 To 40
        Color 7
        c = c + 10
        Line (10, c)-(500, c)
    Next



    Color 5

    Line (5, 200)-(505, 200)
    Line (240, 5)-(240, 400)

    For j = 1 To N
        NAR#(j) = 240 + NAR#(j)
        NKC#(j) = 200 - NKC#(j)

    Next j
    NAR#(N + 1) = NAR#(1)
    NKC#(N + 1) = NKC#(1)


    For I = 1 To N
        Line (NAR#(I), NKC#(I))-(NAR#(I + 1), NKC#(I + 1))
    Next I




    Locate 1, 65
    Print "1--REFLECTION"
    Locate 2, 65
    Print "2--ROTATION;"
    Locate 3, 65
    Print "3--TRANSLATION"
    Locate 4, 65
    Print "4--ENLARGEMENT"
    Locate 5, 65
    Input "select 1/2.."; MB

    Select Case MB
        Case MB = 1
            GoTo ref
            MB = 2
            GoTo rot
        Case MB = 3
            GoTo tra
        Case MB = 4
            GoTo enl
    End Select












    ref:
    If MB = 1 Then
        Locate 7, 65
        Print "REFLECTION IN"
        Locate 8, 65
        Print "1...x-axis"
        Locate 9, 65

        Print "2...y-axis"
        Locate 10, 65
        Print "3... x=y"
        Locate 11, 65
        Print "4...x=-y"
        Locate 12, 65
        Print "5...x=a"
        Locate 13, 65
        Print "6...y=b"
        Locate 14, 65



        Input "choose AXIS"; ax
        Select Case ax

            Case ax = 1
                GoTo axx
            Case ax = 2
                GoTo axy
            Case ax = 3
                GoTo axxy
            Case ax = 4
                GoTo axxyy
            Case ax = 5
                GoTo axa
            Case ax = 6
                GoTo axb
        End Select

    End If
    axx:
    If ax = 1 Then
        For I = 1 To N
            NAR#(I) = NAR#(I)

            NKC#(I) = 200 + ONKC#(I)
        Next I
        NAR#(N + 1) = NAR#(1)
        NKC#(N + 1) = NKC#(1)

        For c = 1 To N


            Line (NAR#(c), NKC#(c))-(NAR#(c + 1), NKC#(c + 1))

        Next c
    End If
    If ax = 1 Then Exit For

    axy:
    If ax = 2 Then
        For I = 1 To N
            NAR#(I) = 240 - ONAR#(I)
            NKC#(I) = NKC#(I)
        Next I
        NAR#(N + 1) = NAR#(1)
        NKC#(N + 1) = NKC#(1)
        For I = 1 To N
            Line (NAR#(I), NKC#(I))-(NAR#(I + 1), NKC#(I + 1))
        Next I
    End If
    If ax = 2 Then Exit For

    axxy:
    If ax = 3 Then
        For I = 1 To N
            NAR#(I) = 240 + ONKC#(I)
            NKC#(I) = 200 - ONAR#(I)
        Next I
        NAR#(N + 1) = NAR#(1)
        NKC#(N + 1) = NKC#(1)

        For I = 1 To N
            Line (NAR#(I), NKC#(I))-(NAR#(I + 1), NKC#(I + 1))
        Next I
    End If
    If ax = 3 Then Exit For

    axxyy:
    If ax = 4 Then
        For I = 1 To N
            Swap NAR#(I), NKC#(I)
        Next I

        For I = 1 To N
            NAR#(I) = 240 - ONKC#(I)
            NKC#(I) = 200 + ONAR#(I)
        Next I
        NAR#(N + 1) = NAR#(1)
        NKC#(N + 1) = NKC#(1)

        For I = 1 To N
            Line (NAR#(I), NKC#(I))-(NAR#(I + 1), NKC#(I + 1))
        Next I
    End If
    If ax = 4 Then Exit For

    axa:
    If ax = 5 Then
        Locate 15, 65
        Input "enter value of a"; qa
        qa = qa * 10 * 2

        For I = 1 To N
            NAR#(I) = NAR#(I) + ((qa - ONAR#(I) * 2))




            NKC#(I) = NKC#(I)
        Next I
        NAR#(N + 1) = NAR#(1)
        NKC#(N + 1) = NKC#(1)

        For I = 1 To N
            Line (NAR#(I), NKC#(I))-(NAR#(I + 1), NKC#(I + 1))
        Next I
    End If
    If ax = 5 Then Exit For


    axb:
    If ax = 6 Then
        Locate 15, 65
        Input "enter value of b"; qb
        qb = qb * 10 * 2
        For I = 1 To N
            NAR#(I) = NAR#(I)
            NKC#(I) = NKC#(I) - (qb - ONKC#(I) * 2)
        Next I
        NAR#(N + 1) = NAR#(1)
        NKC#(N + 1) = NKC#(1)
        For I = 1 To N
            Line (NAR#(I), NKC#(I))-(NAR#(I + 1), NKC#(I + 1))
        Next I
    End If

    If ax = 6 Then Exit For

    rot:
    If MB = 2 Then
        Locate 7, 65
        Print "ROTATION"
        Locate 8, 65
        Print "1...+90/-270 "
        Locate 9, 65

        Print "2...-90/+270"
        Locate 10, 65

        Print "3...+-180"
        Locate 11, 65
        Input "SELECT 1,2..."; rj
    End If



    If rj = 1 Then
        For I = 1 To N
            NAR#(I) = 240 - ONAR#(I)
            NKC#(I) = 200 - ONKC#(I)
        Next I

        NAR#(N + 1) = NAR#(1)
        NKC#(N + 1) = NKC#(1)
        For I = 1 To N
            Line (NAR#(I), NKC#(I))-(NAR#(I + 1), NKC#(I + 1))
        Next I
        Exit For
    End If





    If rj = 2 Then
        For I = 1 To N
            NAR#(I) = 240 + ONKC#(I)
            NKC#(I) = 200 + ONAR#(I)
        Next I

        NAR#(N + 1) = NAR#(1)
        NKC#(N + 1) = NKC#(1)
        For I = 1 To N
            Line (NAR#(I), NKC#(I))-(NAR#(I + 1), NKC#(I + 1))
        Next I
        Exit For
    End If






    If rj = 3 Then
        For I = 1 To N
            NAR#(I) = 240 - ONAR#(I)
            NKC#(I) = 200 + ONKC#(I)
        Next I

        NAR#(N + 1) = NAR#(1)
        NKC#(N + 1) = NKC#(1)
        For I = 1 To N
            Line (NAR#(I), NKC#(I))-(NAR#(I + 1), NKC#(I + 1))
        Next I

        Exit For
    End If

    tra:
    If MB = 3 Then
        Locate 6, 65

        Input "enter vector"; v1, v2
        v1 = v1 * 10
        v2 = v2 * 10
        For I = 1 To N
            NAR#(I) = NAR#(I) + v1
            NKC#(I) = NKC#(I) + v2
        Next I

        NAR#(N + 1) = NAR#(1)
        NKC#(N + 1) = NKC#(1)
        For I = 1 To N
            Line (NAR#(I), NKC#(I))-(NAR#(I + 1), NKC#(I + 1))
        Next I


        Exit For

    End If

    enl:
    If MB = 4 Then
        Locate 7, 65
        Print "ENLARGEMENT"
        Locate 8, 65
        Print "1--FROM ORIGIN"
        Locate 9, 65
        Print "2--FROM POINT"
        Locate 10, 65
        Input "SELECT 1/2.."; DC
    End If
    If DC = 1 Then
        Locate 11, 65
        Input "SCALE"; S
        For I = 1 To N
            NAR#(I) = ONAR#(I) * S + 240
            NKC#(I) = -ONKC#(I) * S + 200
        Next I
        NAR#(N + 1) = NAR#(1)
        NKC#(N + 1) = NKC#(1)
        For I = 1 To N

            Line (NAR#(I), NKC#(I))-(NAR#(I + 1), NKC#(I + 1))

        Next I
    End If




    If DC = 2 Then
        Locate 11, 65
        Input "POINT"; P1, P2

        Locate 12, 65

        Input "SCALE"; S
        For I = 1 To N
            NAR#(I) = ONAR#(I) * S + 240 + P1
            NKC#(I) = -ONKC#(I) * S + 200 - P2
        Next I
        NAR#(N + 1) = NAR#(1)
        NKC#(N + 1) = NKC#(1)
        For I = 1 To N

            Line (NAR#(I), NKC#(I))-(NAR#(I + 1), NKC#(I + 1))

        Next I
    End If






Next k







