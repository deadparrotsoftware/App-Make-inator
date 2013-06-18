#tag Window
Begin Window frmEditDictionary
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   False
   Compatibility   =   ""
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   367
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Edit Dictionary Default Values"
   Visible         =   True
   Width           =   427
   Begin Listbox listDict
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   2
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   301
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Key	Value"
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   387
      _ScrollWidth    =   -1
   End
   Begin PushButton btnApply
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Apply"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   112
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   327
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton btnCancel
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   327
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin BevelButton btnNewRow
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   4
      Bold            =   False
      ButtonType      =   0
      Caption         =   "+"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   385
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   326
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
   End
   Begin BevelButton btnDeleteRow
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   4
      Bold            =   False
      ButtonType      =   0
      Caption         =   "-"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   363
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   326
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
   End
   Begin PushButton btnImportCSV
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Import CSV"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   256
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   326
      Underline       =   False
      Visible         =   True
      Width           =   95
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub ImportCSV()
		  dim f as FolderItem
		  dim t as TextInputStream
		  dim theCSV as string
		  dim lineCount as integer
		  dim i as integer
		  dim theLine as string
		  dim theKey as string
		  dim theValue as string
		  
		  f = GetOpenFolderItem("????")
		  
		  if f <> nil then
		    if f.exists = true then
		      
		      Try
		        t = TextInputStream.Open(f)
		        theCSV = t.ReadAll
		        
		        // Process the new dictionary.
		        listDict.DeleteAllRows
		        
		        lineCount = theCSV.CountFields(EndOfLine)
		        
		        if lineCount > 0 then
		          
		          for i = 1 to lineCount
		            
		            theLine = theCSV.NthField(EndOfLine, i)
		            theKey = theLine.NthField(",", 1)
		            theValue = theLine.NthField(",", 2)
		            
		            if trim(theKey) <> "" then
		              listDict.AddRow theKey
		              listDict.Cell(listDict.LastIndex,1) = theValue
		            end if
		            
		          next
		          
		        end if
		        
		        
		      Catch e As IOException
		        t.Close
		      End Try
		      
		    end if
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PopulateListFromDefault()
		  dim dictTheDict as new Dictionary
		  
		  dictTheDict = GetDictFromString(tempDict)
		  dim i as integer
		  
		  dim s as string
		  
		  listDict.DeleteAllRows
		  
		  if dictTheDict.Count > 0 then
		    for i = 0 to dictTheDict.Count - 1
		      s = dictTheDict.Key(i)
		      frmEditDictionary.listDict.AddRow s
		      frmEditDictionary.listDict.Cell(frmEditDictionary.listDict.LastIndex,1) = dictTheDict.Value(dictTheDict.Key(i))
		    next
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDefaultFromList()
		  dim d as new Dictionary
		  
		  dim i as integer
		  
		  if listDict.ListCount > 0 then
		    for i = 0 to (listDict.ListCount - 1)
		      d.Value(listDict.Cell(i,0)) = listDict.Cell(i,1)
		    next
		  end if
		  
		  tempDict = GetStringFromDict(d)
		  frmNewVariable.tempDictDefault = tempDict
		  //modVariables.VariableObjectFromName(frmNewVariable.thisVariable).SetDefaultDictFromDict(d)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		tempDict As string
	#tag EndProperty

	#tag Property, Flags = &h0
		thisVariable As string
	#tag EndProperty


#tag EndWindowCode

#tag Events listDict
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  Me.CellType(row,column)=Listbox.TypeEditable
		  Me.EditCell(row,column)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnApply
	#tag Event
		Sub Action()
		  SetDefaultFromList
		  frmEditDictionary.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  frmEditDictionary.Close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnNewRow
	#tag Event
		Sub Action()
		  listDict.AddRow "NewKey"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDeleteRow
	#tag Event
		Sub Action()
		  if listDict.ListIndex > -1 then
		    listDict.RemoveRow(listDict.ListIndex)
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnImportCSV
	#tag Event
		Sub Action()
		  ImportCSV
		End Sub
	#tag EndEvent
#tag EndEvents
