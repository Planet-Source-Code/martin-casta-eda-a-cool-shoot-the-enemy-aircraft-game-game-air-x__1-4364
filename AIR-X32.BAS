Attribute VB_Name = "Module1"
Declare Function BitBlt Lib "GDI32" (ByVal hDestDC As Integer, ByVal X As Integer, ByVal Y As Integer, ByVal nWidth As Integer, ByVal nHeight As Integer, ByVal hSrcDC As Integer, ByVal XSrc As Integer, ByVal YSrc As Integer, ByVal dwRop As Long) As Long
Declare Function sndPlaySound Lib "WINMM.DLL" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long
Global Const SRCCOPY = &HCC0020
Global Const SRCAND = &H8800C6
Global Const SRCPAINT = &HEE0086
Global MESSAGE As String
Global SUCCESS As Long
Global XPLANE As Integer
Global YPLANE As Integer
Global XENEMY1 As Integer
Global YENEMY1 As Integer
Global XENEMY2 As Integer
Global YENEMY2 As Integer
Global XENEMY3 As Integer
Global YENEMY3 As Integer
Global XENEMY4 As Integer
Global YENEMY4 As Integer
Global XENEMY5 As Integer
Global YENEMY5 As Integer
Global XENEMY6 As Integer
Global YENEMY6 As Integer
Global XPLANEBULLET As Integer
Global YPLANEBULLET As Integer
Global XENEMYBULLET1 As Integer
Global YENEMYBULLET1 As Integer
Global XENEMYBULLET2 As Integer
Global YENEMYBULLET2 As Integer
Global XENEMYBULLET3 As Integer
Global YENEMYBULLET3 As Integer
Global XENEMYBULLET4 As Integer
Global YENEMYBULLET4 As Integer
Global XENEMYBULLET5 As Integer
Global YENEMYBULLET5 As Integer
Global XENEMYBULLET6 As Integer
Global YENEMYBULLET6 As Integer
Global XEXPLODE As Integer
Global YEXPLODE As Integer
Global RESPONSE As Integer
Global DELAYCTR As Long
Global BACKGROUNDCTR As Integer
Global SCORECTR As Integer
Global LIFECTR As Integer
Global GAMECTR As Integer
Global BONUSCTR As Integer
Global STAGECTR As Integer
Global BULLETSW As Integer
Global FIRESW As Integer
Global LEFTSW As Integer
Global UPSW As Integer
Global RIGHTSW As Integer
Global DOWNSW As Integer
Global BONUSSW As Integer

