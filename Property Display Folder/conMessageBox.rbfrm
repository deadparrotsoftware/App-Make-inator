#tag Window
Begin ContainerControl conMessageBox
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
   Begin TextField txtCustomMessage
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   16777215
      Bold            =   ""
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LimitText       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Mask            =   ""
      Password        =   ""
      ReadOnly        =   ""
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Hello!"
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   32
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   159
   End
   Begin clsPopVariablesList popVariables
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
      Top             =   98
      Underline       =   ""
      Visible         =   True
      Width           =   159
   End
   Begin CheckBox chkCustomMessage
      AutoDeactivate  =   True
      Bold            =   ""
      Caption         =   "Custom Message"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   3
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      State           =   1
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   8
      Underline       =   ""
      Value           =   True
      Visible         =   True
      Width           =   156
   End
   Begin CheckBox chkUseVariable
      AutoDeactivate  =   True
      Bold            =   ""
      Caption         =   "Use Variable"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   3
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   66
      Underline       =   ""
      Value           =   False
      Visible         =   True
      Width           =   146
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  popVariables.PopulateWithText
		  popVariables.SelectVariableByName(ilObjectMessageBox(frmProject.chartProject.selectedFrame.tag).MessageFromVariable)
		  
		  chkCustomMessage.Value = not ilObjectMessageBox(frmProject.chartProject.selectedFrame.tag).UseVariableForMessage
		  chkUseVariable.Value = ilObjectMessageBox(frmProject.chartProject.selectedFrame.tag).UseVariableForMessage
		  
		  if popVariables.ListCount < 1 then
		    if chkUseVariable.Value = true then
		      chkCustomMessage.Value = true
		    end if
		  end if
		  
		  txtCustomMessage.Text = ilObjectMessageBox(frmProject.chartProject.selectedFrame.tag).CustomMessage
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events txtCustomMessage
	#tag Event
		Sub TextChange()
		  
		  ilObjectMessageBox(frmProject.chartProject.selectedFrame.tag).CustomMessage = me.Text
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popVariables
	#tag Event
		Sub Change()
		  ilObjectMessageBox(frmProject.chartProject.selectedFrame.tag).MessageFromVariable = popVariables.Text
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkCustomMessage
	#tag Event
		Sub Action()
		  ilObjectMessageBox(frmProject.chartProject.selectedFrame.tag).UseVariableForMessage = not me.Value
		  chkUseVariable.Value = not me.Value
		  
		  ilObjectMessageBox(frmProject.chartProject.selectedFrame.tag).RequireMessageFromVariable = not me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkUseVariable
	#tag Event
		Sub Action()
		  ilObjectMessageBox(frmProject.chartProject.selectedFrame.tag).UseVariableForMessage = me.Value
		  chkCustomMessage.Value = not me.Value
		  
		  ilObjectMessageBox(frmProject.chartProject.selectedFrame.tag).RequireMessageFromVariable = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
