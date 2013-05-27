#tag Window
Begin ContainerControl conPenSetFontAllignment
   AcceptFocus     =   ""
   AcceptTabs      =   ""
   AutoDeactivate  =   True
   BackColor       =   16777215
   Backdrop        =   ""
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   455
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   32
   LockBottom      =   ""
   LockLeft        =   ""
   LockRight       =   ""
   LockTop         =   ""
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   32
   UseFocusRing    =   ""
   Visible         =   True
   Width           =   179
   Begin clsPopVariablesList popAllign
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   ""
      Left            =   20
      ListIndex       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   54
      Underline       =   ""
      Visible         =   True
      Width           =   159
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   42
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Set Pen Font Allignment for Text:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   0
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   159
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  popAllign.DeleteAllRows
		  popAllign.AddRow "Left"
		  popAllign.AddRow "Center"
		  popAllign.AddRow "Right"
		  
		  popAllign.SelectVariableByName(ilObjectPenSetFontAllignment(frmProject.chartProject.selectedFrame.tag).MessageFromVariable)
		  
		  if popAllign.Text = "" then
		    popAllign.ListIndex = 0
		  end if
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events popAllign
	#tag Event
		Sub Change()
		  ilObjectPenSetFontAllignment(frmProject.chartProject.selectedFrame.tag).MessageFromVariable = popAllign.Text
		  
		End Sub
	#tag EndEvent
#tag EndEvents
