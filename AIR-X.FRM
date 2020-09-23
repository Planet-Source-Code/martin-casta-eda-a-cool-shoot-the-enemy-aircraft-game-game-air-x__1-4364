VERSION 4.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "AIR - X BY MARTIN CASTAÑEDA"
   ClientHeight    =   6915
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9600
   BeginProperty Font 
      name            =   "MS Sans Serif"
      charset         =   1
      weight          =   700
      size            =   24
      underline       =   0   'False
      italic          =   0   'False
      strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000008&
   Height          =   7320
   Icon            =   "AIR-X.frx":0000
   Left            =   0
   LinkMode        =   1  'Source
   LinkTopic       =   "Form1"
   ScaleHeight     =   6915
   ScaleWidth      =   9600
   Top             =   0
   Width           =   9720
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   0
      Top             =   0
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False


    

Private Sub ENEMY1()
     YENEMY1 = YENEMY1 + 10
     YENEMYBULLET1 = YENEMYBULLET1 + 20
     If YENEMY1 > 400 Then
          XENEMY1 = (Rnd * 580)
          YENEMY1 = 0
     End If
     If YENEMYBULLET1 > 500 Then
          XENEMYBULLET1 = XENEMY1
          YENEMYBULLET1 = YENEMY1
     End If
     SUCCESS = BITBLT(Form1.hDC, XENEMYBULLET1, YENEMYBULLET1, Form2.PICTURE7.ScaleWidth, Form2.PICTURE7.ScaleHeight, Form2.PICTURE7.hDC, 0, 0, SRCAND)
     SUCCESS = BITBLT(Form1.hDC, XENEMYBULLET1, YENEMYBULLET1, Form2.PICTURE8.ScaleWidth, Form2.PICTURE8.ScaleHeight, Form2.PICTURE8.hDC, 0, 0, SRCPAINT)
     SUCCESS = BITBLT(Form1.hDC, XENEMY1, YENEMY1, Form2.PICTURE3.ScaleWidth, Form2.PICTURE3.ScaleHeight, Form2.PICTURE3.hDC, 0, 0, SRCAND)
     SUCCESS = BITBLT(Form1.hDC, XENEMY1, YENEMY1, Form2.PICTURE4.ScaleWidth, Form2.PICTURE4.ScaleHeight, Form2.PICTURE4.hDC, 0, 0, SRCPAINT)
End Sub

Private Sub ENEMY1COLLIDE()
     If XPLANE > XENEMY1 - 30 Then
          If XPLANE < XENEMY1 + 30 Then
               If YPLANE > YENEMY1 - 30 Then
                    If YPLANE < YENEMY1 + 30 Then
                         SCORECTR = SCORECTR + 1
                         BONUSCTR = BONUSCTR + 1
                         LIFECTR = LIFECTR - 1
                         XEXPLODE = XPLANE
                         YEXPLODE = YPLANE
                         Call EXPLODE
                         XEXPLODE = XENEMY1
                         YEXPLODE = YENEMY1
                         Call EXPLODE
                         XENEMY1 = (Rnd * 580)
                         YENEMY1 = 0
                    End If
               End If
          End If
     End If
     If XPLANEBULLET > XENEMY1 - 30 Then
          If XPLANEBULLET < XENEMY1 + 30 Then
               If YPLANEBULLET > YENEMY1 - 100 Then
                    If YPLANEBULLET < YENEMY1 + 30 Then
                         SCORECTR = SCORECTR + 1
                         BONUSCTR = BONUSCTR + 1
                         XEXPLODE = XENEMY1
                         YEXPLODE = YENEMY1
                         Call EXPLODE
                         YPLANEBULLET = -100
                         XENEMY1 = (Rnd * 580)
                         YENEMY1 = 0
                    End If
               End If
          End If
     End If
     If XENEMYBULLET1 > XPLANE - 30 Then
          If XENEMYBULLET1 < XPLANE + 30 Then
               If YENEMYBULLET1 > YPLANE - 30 Then
                    If YENEMYBULLET1 < YPLANE + 30 Then
                         LIFECTR = LIFECTR - 1
                         XEXPLODE = XPLANE
                         YEXPLODE = YPLANE
                         Call EXPLODE
                         YENEMYBULLET1 = 500
                    End If
               End If
          End If
     End If
End Sub

Private Sub ENEMY2()
     YENEMY2 = YENEMY2 + 10
     YENEMYBULLET2 = YENEMYBULLET2 + 20
     If YENEMY2 > 400 Then
          XENEMY2 = (Rnd * 580)
          YENEMY2 = 0
     End If
     If XENEMY2 < XPLANE Then XENEMY2 = XENEMY2 + 3
     If XENEMY2 > XPLANE Then XENEMY2 = XENEMY2 - 3
     If YENEMYBULLET2 > 500 Then
          XENEMYBULLET2 = XENEMY2
          YENEMYBULLET2 = YENEMY2
     End If
     SUCCESS = BITBLT(Form1.hDC, XENEMYBULLET2, YENEMYBULLET2, Form2.PICTURE7.ScaleWidth, Form2.PICTURE7.ScaleHeight, Form2.PICTURE7.hDC, 0, 0, SRCAND)
     SUCCESS = BITBLT(Form1.hDC, XENEMYBULLET2, YENEMYBULLET2, Form2.PICTURE8.ScaleWidth, Form2.PICTURE8.ScaleHeight, Form2.PICTURE8.hDC, 0, 0, SRCPAINT)
     SUCCESS = BITBLT(Form1.hDC, XENEMY2, YENEMY2, Form2.PICTURE3.ScaleWidth, Form2.PICTURE3.ScaleHeight, Form2.PICTURE3.hDC, 0, 0, SRCAND)
     SUCCESS = BITBLT(Form1.hDC, XENEMY2, YENEMY2, Form2.PICTURE4.ScaleWidth, Form2.PICTURE4.ScaleHeight, Form2.PICTURE4.hDC, 0, 0, SRCPAINT)
End Sub

Private Sub ENEMY2COLLIDE()
     If XPLANE > XENEMY2 - 30 Then
          If XPLANE < XENEMY2 + 30 Then
               If YPLANE > YENEMY2 - 30 Then
                    If YPLANE < YENEMY2 + 30 Then
                         SCORECTR = SCORECTR + 1
                         BONUSCTR = BONUSCTR + 1
                         LIFECTR = LIFECTR - 1
                         XEXPLODE = XPLANE
                         YEXPLODE = YPLANE
                         Call EXPLODE
                         XEXPLODE = XENEMY2
                         YEXPLODE = YENEMY2
                         Call EXPLODE
                         XENEMY2 = (Rnd * 12) * 5
                         YENEMY2 = 0
                    End If
               End If
          End If
     End If
     If XPLANEBULLET > XENEMY2 - 30 Then
          If XPLANEBULLET < XENEMY2 + 30 Then
               If YPLANEBULLET > YENEMY2 - 100 Then
                    If YPLANEBULLET < YENEMY2 + 30 Then
                         SCORECTR = SCORECTR + 1
                         BONUSCTR = BONUSCTR + 1
                         XEXPLODE = XENEMY2
                         YEXPLODE = YENEMY2
                         Call EXPLODE
                         YPLANEBULLET = -100
                         XENEMY2 = (Rnd * 12) * 5
                         YENEMY2 = 0
                    End If
               End If
          End If
     End If
     If XENEMYBULLET2 > XPLANE - 30 Then
          If XENEMYBULLET2 < XPLANE + 30 Then
               If YENEMYBULLET2 > YPLANE - 30 Then
                    If YENEMYBULLET2 < YPLANE + 30 Then
                         LIFECTR = LIFECTR - 1
                         XEXPLODE = XPLANE
                         YEXPLODE = YPLANE
                         Call EXPLODE
                         YENEMYBULLET2 = 500
                    End If
               End If
          End If
     End If
End Sub

Private Sub ENEMY3()
     YENEMY3 = YENEMY3 + 10
     YENEMYBULLET3 = YENEMYBULLET3 + 20
     If YENEMY3 > 400 Then
          XENEMY3 = (Rnd * 580)
          YENEMY3 = 0
     End If
     If YENEMYBULLET3 > 500 Then
          XENEMYBULLET3 = XENEMY3
          YENEMYBULLET3 = YENEMY3
     End If
     SUCCESS = BITBLT(Form1.hDC, XENEMYBULLET3, YENEMYBULLET3, Form2.PICTURE7.ScaleWidth, Form2.PICTURE7.ScaleHeight, Form2.PICTURE7.hDC, 0, 0, SRCAND)
     SUCCESS = BITBLT(Form1.hDC, XENEMYBULLET3, YENEMYBULLET3, Form2.PICTURE8.ScaleWidth, Form2.PICTURE8.ScaleHeight, Form2.PICTURE8.hDC, 0, 0, SRCPAINT)
     SUCCESS = BITBLT(Form1.hDC, XENEMY3, YENEMY3, Form2.PICTURE3.ScaleWidth, Form2.PICTURE3.ScaleHeight, Form2.PICTURE3.hDC, 0, 0, SRCAND)
     SUCCESS = BITBLT(Form1.hDC, XENEMY3, YENEMY3, Form2.PICTURE4.ScaleWidth, Form2.PICTURE4.ScaleHeight, Form2.PICTURE4.hDC, 0, 0, SRCPAINT)
End Sub

Private Sub ENEMY3COLLIDE()
     If XPLANE > XENEMY3 - 30 Then
          If XPLANE < XENEMY3 + 30 Then
               If YPLANE > YENEMY3 - 30 Then
                    If YPLANE < YENEMY3 + 30 Then
                         SCORECTR = SCORECTR + 1
                         BONUSCTR = BONUSCTR + 1
                         LIFECTR = LIFECTR - 1
                         XEXPLODE = XPLANE
                         YEXPLODE = YPLANE
                         Call EXPLODE
                         XEXPLODE = XENEMY3
                         YEXPLODE = YENEMY3
                         Call EXPLODE
                         XENEMY3 = (Rnd * 580)
                         YENEMY3 = 0
                    End If
               End If
          End If
     End If
     If XPLANEBULLET > XENEMY3 - 30 Then
          If XPLANEBULLET < XENEMY3 + 30 Then
               If YPLANEBULLET > YENEMY3 - 100 Then
                    If YPLANEBULLET < YENEMY3 + 30 Then
                         SCORECTR = SCORECTR + 1
                         BONUSCTR = BONUSCTR + 1
                         XEXPLODE = XENEMY3
                         YEXPLODE = YENEMY3
                         Call EXPLODE
                         YPLANEBULLET = -100
                         XENEMY3 = (Rnd * 580)
                         YENEMY3 = 0
                    End If
               End If
          End If
     End If
     If XENEMYBULLET3 > XPLANE - 30 Then
          If XENEMYBULLET3 < XPLANE + 30 Then
               If YENEMYBULLET3 > YPLANE - 30 Then
                    If YENEMYBULLET3 < YPLANE + 30 Then
                         LIFECTR = LIFECTR - 1
                         XEXPLODE = XPLANE
                         YEXPLODE = YPLANE
                         Call EXPLODE
                         YENEMYBULLET3 = 500
                    End If
               End If
          End If
     End If
End Sub

Private Sub ENEMY4()
     XENEMY4 = XENEMY4 + 10
     XENEMYBULLET4 = XENEMYBULLET4 + 20
     If XENEMY4 > 580 Then
          XENEMY4 = 0
          YENEMY4 = (Rnd * 400)
     End If
     If XENEMYBULLET4 > 680 Then
          XENEMYBULLET4 = XENEMY4
          YENEMYBULLET4 = YENEMY4
     End If
     SUCCESS = BITBLT(Form1.hDC, XENEMYBULLET4, YENEMYBULLET4, Form2.PICTURE7.ScaleWidth, Form2.PICTURE7.ScaleHeight, Form2.PICTURE7.hDC, 0, 0, SRCAND)
     SUCCESS = BITBLT(Form1.hDC, XENEMYBULLET4, YENEMYBULLET4, Form2.PICTURE8.ScaleWidth, Form2.PICTURE8.ScaleHeight, Form2.PICTURE8.hDC, 0, 0, SRCPAINT)
     SUCCESS = BITBLT(Form1.hDC, XENEMY4, YENEMY4, Form2.PICTURE5.ScaleWidth, Form2.PICTURE5.ScaleHeight, Form2.PICTURE5.hDC, 0, 0, SRCAND)
     SUCCESS = BITBLT(Form1.hDC, XENEMY4, YENEMY4, Form2.PICTURE6.ScaleWidth, Form2.PICTURE6.ScaleHeight, Form2.PICTURE6.hDC, 0, 0, SRCPAINT)
End Sub

Private Sub ENEMY4COLLIDE()
     If XPLANE > XENEMY4 - 30 Then
          If XPLANE < XENEMY4 + 30 Then
               If YPLANE > YENEMY4 - 30 Then
                    If YPLANE < YENEMY4 + 30 Then
                         SCORECTR = SCORECTR + 2
                         BONUSCTR = BONUSCTR + 2
                         LIFECTR = LIFECTR - 1
                         XEXPLODE = XPLANE
                         YEXPLODE = YPLANE
                         Call EXPLODE
                         XEXPLODE = XENEMY4
                         YEXPLODE = YENEMY4
                         Call EXPLODE
                         XENEMY4 = 0
                         YENEMY4 = (Rnd * 400)
                    End If
               End If
          End If
     End If
     If XPLANEBULLET > XENEMY4 - 30 Then
          If XPLANEBULLET < XENEMY4 + 30 Then
               If YPLANEBULLET > YENEMY4 - 100 Then
                    If YPLANEBULLET < YENEMY4 + 30 Then
                         SCORECTR = SCORECTR + 2
                         BONUSCTR = BONUSCTR + 2
                         XEXPLODE = XENEMY4
                         YEXPLODE = YENEMY4
                         Call EXPLODE
                         YPLANEBULLET = -100
                         XENEMY4 = 0
                         YENEMY4 = (Rnd * 400)
                    End If
               End If
          End If
     End If
     If XENEMYBULLET4 > XPLANE - 30 Then
          If XENEMYBULLET4 < XPLANE + 30 Then
               If YENEMYBULLET4 > YPLANE - 30 Then
                    If YENEMYBULLET4 < YPLANE + 30 Then
                         LIFECTR = LIFECTR - 1
                         XEXPLODE = XPLANE
                         YEXPLODE = YPLANE
                         Call EXPLODE
                         YENEMYBULLET4 = 680
                    End If
               End If
          End If
     End If
End Sub

Private Sub ENEMY5()
     XENEMY5 = XENEMY5 + 10
     XENEMYBULLET5 = XENEMYBULLET5 + 20
     If XENEMY5 > 580 Then
          XENEMY5 = 0
          YENEMY5 = (Rnd * 400)
     End If
     If YENEMY5 < YPLANE Then YENEMY5 = YENEMY5 + 3
     If YENEMY5 > YPLANE Then YENEMY5 = YENEMY5 - 3
     If XENEMYBULLET5 > 680 Then
          XENEMYBULLET5 = XENEMY5
          YENEMYBULLET5 = YENEMY5
     End If
     SUCCESS = BITBLT(Form1.hDC, XENEMYBULLET5, YENEMYBULLET5, Form2.PICTURE7.ScaleWidth, Form2.PICTURE7.ScaleHeight, Form2.PICTURE7.hDC, 0, 0, SRCAND)
     SUCCESS = BITBLT(Form1.hDC, XENEMYBULLET5, YENEMYBULLET5, Form2.PICTURE8.ScaleWidth, Form2.PICTURE8.ScaleHeight, Form2.PICTURE8.hDC, 0, 0, SRCPAINT)
     SUCCESS = BITBLT(Form1.hDC, XENEMY5, YENEMY5, Form2.PICTURE5.ScaleWidth, Form2.PICTURE5.ScaleHeight, Form2.PICTURE5.hDC, 0, 0, SRCAND)
     SUCCESS = BITBLT(Form1.hDC, XENEMY5, YENEMY5, Form2.PICTURE6.ScaleWidth, Form2.PICTURE6.ScaleHeight, Form2.PICTURE6.hDC, 0, 0, SRCPAINT)
End Sub

Private Sub ENEMY5COLLIDE()
     If XPLANE > XENEMY5 - 30 Then
          If XPLANE < XENEMY5 + 30 Then
               If YPLANE > YENEMY5 - 30 Then
                    If YPLANE < YENEMY5 + 30 Then
                         SCORECTR = SCORECTR + 2
                         BONUSCTR = BONUSCTR + 2
                         LIFECTR = LIFECTR - 1
                         XEXPLODE = XPLANE
                         YEXPLODE = YPLANE
                         Call EXPLODE
                         XEXPLODE = XENEMY5
                         YEXPLODE = YENEMY5
                         Call EXPLODE
                         XENEMY5 = 0
                         YENEMY5 = (Rnd * 400)
                    End If
               End If
          End If
     End If
     If XPLANEBULLET > XENEMY5 - 30 Then
          If XPLANEBULLET < XENEMY5 + 30 Then
               If YPLANEBULLET > YENEMY5 - 100 Then
                    If YPLANEBULLET < YENEMY5 + 30 Then
                         SCORECTR = SCORECTR + 2
                         BONUSCTR = BONUSCTR + 2
                         XEXPLODE = XENEMY5
                         YEXPLODE = YENEMY5
                         Call EXPLODE
                         YPLANEBULLET = -100
                         XENEMY5 = 0
                         YENEMY5 = (Rnd * 400)
                    End If
               End If
          End If
     End If
     If XENEMYBULLET5 > XPLANE - 30 Then
          If XENEMYBULLET5 < XPLANE + 30 Then
               If YENEMYBULLET5 > YPLANE - 30 Then
                    If YENEMYBULLET5 < YPLANE + 30 Then
                         LIFECTR = LIFECTR - 1
                         XEXPLODE = XPLANE
                         YEXPLODE = YPLANE
                         Call EXPLODE
                         YENEMYBULLET5 = 680
                    End If
               End If
          End If
     End If
End Sub

Private Sub ENEMY6()
     XENEMY6 = XENEMY6 + 10
     XENEMYBULLET6 = XENEMYBULLET6 + 20
     If XENEMY6 > 580 Then
          XENEMY6 = 0
          YENEMY6 = (Rnd * 400)
     End If
     If XENEMYBULLET6 > 680 Then
          XENEMYBULLET6 = XENEMY6
          YENEMYBULLET6 = YENEMY6
     End If
     SUCCESS = BITBLT(Form1.hDC, XENEMYBULLET6, YENEMYBULLET6, Form2.PICTURE7.ScaleWidth, Form2.PICTURE7.ScaleHeight, Form2.PICTURE7.hDC, 0, 0, SRCAND)
     SUCCESS = BITBLT(Form1.hDC, XENEMYBULLET6, YENEMYBULLET6, Form2.PICTURE8.ScaleWidth, Form2.PICTURE8.ScaleHeight, Form2.PICTURE8.hDC, 0, 0, SRCPAINT)
     SUCCESS = BITBLT(Form1.hDC, XENEMY6, YENEMY6, Form2.PICTURE5.ScaleWidth, Form2.PICTURE5.ScaleHeight, Form2.PICTURE5.hDC, 0, 0, SRCAND)
     SUCCESS = BITBLT(Form1.hDC, XENEMY6, YENEMY6, Form2.PICTURE6.ScaleWidth, Form2.PICTURE6.ScaleHeight, Form2.PICTURE6.hDC, 0, 0, SRCPAINT)
End Sub

Private Sub ENEMY6COLLIDE()
     If XPLANE > XENEMY6 - 30 Then
          If XPLANE < XENEMY6 + 30 Then
               If YPLANE > YENEMY6 - 30 Then
                    If YPLANE < YENEMY6 + 30 Then
                         SCORECTR = SCORECTR + 2
                         BONUSCTR = BONUSCTR + 2
                         LIFECTR = LIFECTR - 1
                         XEXPLODE = XPLANE
                         YEXPLODE = YPLANE
                         Call EXPLODE
                         XEXPLODE = XENEMY6
                         YEXPLODE = YENEMY6
                         Call EXPLODE
                         XENEMY6 = 0
                         YENEMY6 = (Rnd * 400)
                    End If
               End If
          End If
     End If
     If XPLANEBULLET > XENEMY6 - 30 Then
          If XPLANEBULLET < XENEMY6 + 30 Then
               If YPLANEBULLET > YENEMY6 - 100 Then
                    If YPLANEBULLET < YENEMY6 + 30 Then
                         SCORECTR = SCORECTR + 2
                         BONUSCTR = BONUSCTR + 2
                         XEXPLODE = XENEMY6
                         YEXPLODE = YENEMY6
                         Call EXPLODE
                         YPLANEBULLET = -100
                         XENEMY6 = 0
                         YENEMY6 = (Rnd * 400)
                    End If
               End If
          End If
     End If
     If XENEMYBULLET6 > XPLANE - 30 Then
          If XENEMYBULLET6 < XPLANE + 30 Then
               If YENEMYBULLET6 > YPLANE - 30 Then
                    If YENEMYBULLET6 < YPLANE + 30 Then
                         LIFECTR = LIFECTR - 1
                         XEXPLODE = XPLANE
                         YEXPLODE = YPLANE
                         Call EXPLODE
                         YENEMYBULLET6 = 680
                    End If
               End If
          End If
     End If
End Sub

Private Sub EXPLODE()
     If BONUSCTR >= 100 Then
          LIFECTR = LIFECTR + 1
          BONUSCTR = Val(Right$(Str$(SCORECTR), 1))
     End If
     SUCCESS = BITBLT(Form1.hDC, XEXPLODE, YEXPLODE, Form2.PICTURE9.ScaleWidth, Form2.PICTURE9.ScaleHeight, Form2.PICTURE9.hDC, 0, 0, SRCAND)
     SUCCESS = BITBLT(Form1.hDC, XEXPLODE, YEXPLODE, Form2.PICTURE10.ScaleWidth, Form2.PICTURE10.ScaleHeight, Form2.PICTURE10.hDC, 0, 0, SRCPAINT)
     SUCCESS = SNDPLAYSOUND(App.Path + "\EXPLODE.WAV", &H1)
End Sub

Private Sub Form_KeyDown(Keycode As Integer, Shift As Integer)
     If Keycode = 17 Then FIRESW = 1
     If Keycode = 37 Then LEFTSW = 1
     If Keycode = 38 Then UPSW = 1
     If Keycode = 39 Then RIGHTSW = 1
     If Keycode = 40 Then DOWNSW = 1
End Sub

Private Sub Form_KeyPress(Keyascii As Integer)
     If TIMER1.Enabled = 0 Then TIMER1.Enabled = 1
     If Keyascii = 27 Then End
End Sub

Private Sub Form_KeyUp(Keycode As Integer, Shift As Integer)
     If Keycode = 17 Then FIRESW = 0
     If Keycode = 37 Then LEFTSW = 0
     If Keycode = 38 Then UPSW = 0
     If Keycode = 39 Then RIGHTSW = 0
     If Keycode = 40 Then DOWNSW = 0
End Sub

Private Sub Form_Load()
     TIMER1.Enabled = 0
     Randomize Timer
     Call INITIALIZE
     Picture = LoadPicture(App.Path + "\AIR-X.BMP")
     Form2.PICTURE1.Picture = LoadPicture(App.Path + "\AIR-XP2.BMP")
     Form2.PICTURE2.Picture = LoadPicture(App.Path + "\AIR-XP1.BMP")
     Form2.PICTURE3.Picture = LoadPicture(App.Path + "\AIR-XE2A.BMP")
     Form2.PICTURE4.Picture = LoadPicture(App.Path + "\AIR-XE1A.BMP")
     Form2.PICTURE5.Picture = LoadPicture(App.Path + "\AIR-XE2B.BMP")
     Form2.PICTURE6.Picture = LoadPicture(App.Path + "\AIR-XE1B.BMP")
     Form2.PICTURE7.Picture = LoadPicture(App.Path + "\AIR-XB2.BMP")
     Form2.PICTURE8.Picture = LoadPicture(App.Path + "\AIR-XB1.BMP")
     Form2.PICTURE9.Picture = LoadPicture(App.Path + "\AIR-XE2.BMP")
     Form2.PICTURE10.Picture = LoadPicture(App.Path + "\AIR-XE1.BMP")
     SUCCESS = SNDPLAYSOUND(App.Path + "\INTRO.WAV", &H1)
     Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2
End Sub

Private Sub Form_Unload(Cancel As Integer)
     End
End Sub

Private Sub HIGHSCORE()
     ReDim PLAYER(1 To 11) As String
     ReDim SCORE(1 To 11) As Integer
     Dim PLAYERNAME As String
     Dim PLAYERTEMP As String
     Dim SCORETEMP As Integer
     Dim MAINLOOP As Integer
     Dim LOOPCTR As Integer
     Dim FOUNDSW As Integer
     Open App.Path + "\AIR-X.DAT" For Input As #1
     For LOOPCTR = 1 To 10
          Input #1, PLAYER(LOOPCTR), SCORE(LOOPCTR)
     Next LOOPCTR
     Close #1
     For LOOPCTR = 1 To 10
          If SCORECTR > SCORE(LOOPCTR) Then FOUNDSW = 1
     Next LOOPCTR
     If FOUNDSW = 1 Then
          PLAYERNAME = InputBox$("INPUT NAME")
          If PLAYERNAME = "" Then PLAYERNAME = "NONE"
          PLAYER(11) = PLAYERNAME
          SCORE(11) = SCORECTR
     End If
     For MAINLOOPCTR = 1 To 10
          For LOOPCTR = 1 To 10
               If SCORE(LOOPCTR) < SCORE(LOOPCTR + 1) Then
                    PLAYERTEMP = PLAYER(LOOPCTR)
                    PLAYER(LOOPCTR) = PLAYER(LOOPCTR + 1)
                    PLAYER(LOOPCTR + 1) = PLAYERTEMP
                    SCORETEMP = SCORE(LOOPCTR)
                    SCORE(LOOPCTR) = SCORE(LOOPCTR + 1)
                    SCORE(LOOPCTR + 1) = SCORETEMP
               End If
          Next LOOPCTR
     Next MAINLOOPCTR
     Open App.Path + "\AIR-X.DAT" For Output As #1
     MESSAGE = "HIGH SCORE" + Chr$(13)
     For LOOPCTR = 1 To 10
          MESSAGE = MESSAGE + Chr$(13)
          If SCORE(LOOPCTR) = SCORECTR Then
               MESSAGE = MESSAGE + "-> " + PLAYER(LOOPCTR) + " - " + Format$(SCORE(LOOPCTR), "00000")
          Else
               MESSAGE = MESSAGE + PLAYER(LOOPCTR) + " - " + Format$(SCORE(LOOPCTR), "00000")
          End If
          Write #1, PLAYER(LOOPCTR), SCORE(LOOPCTR)
     Next LOOPCTR
     Close #1
     MsgBox (MESSAGE)
End Sub

Private Sub INITIALIZE()
     XPLANE = 300
     YPLANE = 400
     Call INITIALIZESPRITES
     GAMECTR = 0
     LIFECTR = 3
     SCORECTR = 0
     BONUSCTR = 0
     STAGECTR = 1
     FIRESW = 0
     LEFTSW = 0
     UPSW = 0
     RIGHTSW = 0
     DOWNSW = 0
     BONUSSW = 0
End Sub

Private Sub INITIALIZESPRITES()
     XENEMY1 = 250
     YENEMY1 = 0
     XENEMY2 = 250
     YENEMY2 = 0
     XENEMY3 = 250
     YENEMY3 = 0
     XENEMY4 = 0
     YENEMY4 = 200
     XENEMY5 = 0
     YENEMY5 = 200
     XENEMY6 = 0
     YENEMY6 = 200
     XENEMYBULLET1 = 250
     YENEMYBULLET1 = 0
     XENEMYBULLET2 = 250
     YENEMYBULLET2 = 0
     XENEMYBULLET3 = 250
     YENEMYBULLET3 = 0
     XENEMYBULLET4 = 0
     YENEMYBULLET4 = 200
     XENEMYBULLET5 = 0
     YENEMYBULLET5 = 200
     XENEMYBULLET6 = 0
     YENEMYBULLET6 = 200
     BACKGROUNDCTR = 450
End Sub

Private Sub PLANE()
     If FIRESW = 1 Then
          If BULLETSW = 0 Then
               BULLETSW = 1
               XPLANEBULLET = XPLANE
               YPLANEBULLET = YPLANE
               SUCCESS = SNDPLAYSOUND(App.Path + "\FIRE.WAV", &H1)
          End If
     End If
     If BULLETSW = 1 Then YPLANEBULLET = YPLANEBULLET - 100
     If YPLANEBULLET < -100 Then BULLETSW = 0
     If LEFTSW = 1 Then
          XPLANE = XPLANE - 25
          If XPLANE < 0 Then XPLANE = 0
     End If
     If UPSW = 1 Then
          YPLANE = YPLANE - 25
          If YPLANE < 0 Then YPLANE = 0
     End If
     If RIGHTSW = 1 Then
          XPLANE = XPLANE + 25
          If XPLANE > 575 Then XPLANE = 575
     End If
     If DOWNSW = 1 Then
          YPLANE = YPLANE + 25
          If YPLANE > 400 Then YPLANE = 400
     End If
     If BULLETSW = 1 Then
          SUCCESS = BITBLT(Form1.hDC, XPLANEBULLET, YPLANEBULLET, Form2.PICTURE7.ScaleWidth, Form2.PICTURE7.ScaleHeight, Form2.PICTURE7.hDC, 0, 0, SRCAND)
          SUCCESS = BITBLT(Form1.hDC, XPLANEBULLET, YPLANEBULLET, Form2.PICTURE8.ScaleWidth, Form2.PICTURE8.ScaleHeight, Form2.PICTURE8.hDC, 0, 0, SRCPAINT)
          SUCCESS = BITBLT(Form1.hDC, XPLANEBULLET, YPLANEBULLET + 25, Form2.PICTURE7.ScaleWidth, Form2.PICTURE7.ScaleHeight, Form2.PICTURE7.hDC, 0, 0, SRCAND)
          SUCCESS = BITBLT(Form1.hDC, XPLANEBULLET, YPLANEBULLET + 25, Form2.PICTURE8.ScaleWidth, Form2.PICTURE8.ScaleHeight, Form2.PICTURE8.hDC, 0, 0, SRCPAINT)
          SUCCESS = BITBLT(Form1.hDC, XPLANEBULLET, YPLANEBULLET + 50, Form2.PICTURE7.ScaleWidth, Form2.PICTURE7.ScaleHeight, Form2.PICTURE7.hDC, 0, 0, SRCAND)
          SUCCESS = BITBLT(Form1.hDC, XPLANEBULLET, YPLANEBULLET + 50, Form2.PICTURE8.ScaleWidth, Form2.PICTURE8.ScaleHeight, Form2.PICTURE8.hDC, 0, 0, SRCPAINT)
     End If
     SUCCESS = BITBLT(Form1.hDC, XPLANE, YPLANE, Form2.PICTURE1.ScaleWidth, Form2.PICTURE1.ScaleHeight, Form2.PICTURE1.hDC, 0, 0, SRCAND)
     SUCCESS = BITBLT(Form1.hDC, XPLANE, YPLANE, Form2.PICTURE2.ScaleWidth, Form2.PICTURE2.ScaleHeight, Form2.PICTURE2.hDC, 0, 0, SRCPAINT)
End Sub

















Private Sub STAGE1()
     If GAMECTR > 0 Or YENEMY1 > 0 Then
          Call ENEMY1
          Call ENEMY1COLLIDE
     End If
     If GAMECTR > 200 Or YENEMY2 > 0 Then
          Call ENEMY2
          Call ENEMY2COLLIDE
     End If
     If GAMECTR > 400 Or YENEMY3 > 0 Then
          Call ENEMY3
          Call ENEMY3COLLIDE
     End If
     If GAMECTR > 100 Or XENEMY4 > 0 Then
          Call ENEMY4
          Call ENEMY4COLLIDE
     End If
     If GAMECTR > 300 Or XENEMY5 > 0 Then
          Call ENEMY5
          Call ENEMY5COLLIDE
     End If
     If GAMECTR > 500 Or XENEMY6 > 0 Then
          Call ENEMY6
          Call ENEMY6COLLIDE
     End If
End Sub



Private Sub Timer1_Timer()
     If STAGECTR = 1 And GAMECTR = 0 Then Form3.PICTURE1.Picture = LoadPicture(App.Path + "\AIR-XBG3.BMP")
     GAMECTR = GAMECTR + 1
     BACKGROUNDCTR = BACKGROUNDCTR - 1
     If BACKGROUNDCTR < 0 Then BACKGROUNDCTR = 450
     SUCCESS = BITBLT(Form1.hDC, 0, 0, Form1.ScaleWidth, Form1.ScaleHeight, Form3.PICTURE1.hDC, 0, BACKGROUNDCTR, SRCCOPY)
     Call PLANE
     If STAGECTR = 1 Then Call STAGE1
     CurrentX = 0
     CurrentY = 0
     Print "STAGE - " + Str$(STAGECTR)
     Print "SCORE - " + Str$(SCORECTR)
     Print "LIFE - " + Str$(LIFECTR)
     If LIFECTR <= 0 Then
          MsgBox ("GAME OVER")
          Call HIGHSCORE
          RESPONSE = MsgBox("PLAY AIR-X GAME", 4)
          If RESPONSE <> 6 Then End
          Call INITIALIZE
     End If
End Sub

