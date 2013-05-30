#tag Window
Begin Window frmSplash
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   4
   FullScreen      =   False
   HasBackColor    =   True
   Height          =   3.16e+2
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "App-Make-inator"
   Visible         =   True
   Width           =   6.27e+2
   Begin Timer timeSplash
      Height          =   32
      Index           =   -2147483648
      Left            =   -49
      LockedInPosition=   False
      Mode            =   2
      Period          =   350
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   29
      Width           =   32
   End
   Begin Canvas Canvas1
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   381265919
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   128
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   14
      UseFocusRing    =   True
      Visible         =   True
      Width           =   128
   End
   Begin Label StaticText3
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   160
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      Text            =   "Copyright 2010-2013, Bryan Lunduke"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   10
      TextUnit        =   0
      Top             =   81
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   229
   End
   Begin Label StaticText1
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   160
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      Text            =   "App-Make-inator"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   13
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   229
   End
   Begin Label lblVer
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   160
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      Text            =   "1.0.0"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   13
      TextUnit        =   0
      Top             =   49
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   126
   End
   Begin Label lblLoading
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   37
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      Text            =   "..."
      TextAlign       =   1
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   16
      TextUnit        =   0
      Top             =   259
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   369
   End
   Begin Canvas Canvas2
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   1066840063
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   200
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   407
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   14
      UseFocusRing    =   True
      Visible         =   True
      Width           =   200
   End
   Begin Canvas Canvas3
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   1500641279
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   70
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   407
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   226
      UseFocusRing    =   True
      Visible         =   True
      Width           =   200
   End
End
#tag EndWindow

#tag WindowCode
	#tag Property, Flags = &h0
		Counter As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events timeSplash
	#tag Event
		Sub Action()
		  Counter = Counter + 1
		  
		  select case Counter
		  case 1
		    lblLoading.Text = "... Initializing Coefficients ..."
		  case 2
		    lblLoading.Text = "... Randomizing Goats ..."
		    
		  case 3
		    lblLoading.Text = "... Reticulating Splines ..."
		    
		  case 4
		    timeSplash.Mode = 0
		    frmProject.Show
		    frmSplash.Close
		    
		  end select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblVer
	#tag Event
		Sub Open()
		  me.Text = app.LongVersion
		End Sub
	#tag EndEvent
#tag EndEvents
