#tag Class
Protected Class tMap
Inherits thread
	#tag Event
		Sub Run()
		  // Get the full project picture
		  dim p as picture
		  
		  'p = frmProject.chartProject.GetPictureOfChart
		  
		  dim p2 as picture
		  
		  'p2 = new picture (frmProject.canMap.Width, frmProject.canMap.Height, 32)
		  
		  'p2.Graphics.DrawPicture(p,0,0,frmProject.canMap.Width, frmProject.canMap.Height,0,0,p.Width, p.Height)
		  
		  'frmProject.canMap.Backdrop = p2
		End Sub
	#tag EndEvent


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InheritedFrom="thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
			InheritedFrom="thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="thread"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
