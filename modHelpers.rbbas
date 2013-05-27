#tag Module
Protected Module modHelpers
	#tag Method, Flags = &h0
		Function ColorValue(extends s as String) As color
		  dim v as Variant = s
		  return v.ColorValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScaleComicPageTo(value as picture, max as integer) As picture
		  dim p,p2 as Picture
		  dim w, h as Integer
		  dim pw, ph as Integer
		  
		  p2 = value
		  
		  pw = p2.Width
		  ph = p2.Height
		  
		  if pw < (max + 1) and ph < (max + 1) then
		    
		    p = p2
		    
		  else
		    
		    if pw > ph  then
		      
		      w = max
		      h =  (w / pw)  * ph
		      
		    else
		      
		      h = max
		      w =  (h / ph)  * pw
		      
		    end if
		    
		    p = NewPicture(w,h,32)
		    
		    p = ScalePicture(p2, w,h)
		    
		  end if
		  
		  Return p
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StringValue(extends c as Color) As String
		  dim v as Variant = c
		  return v.StringValue
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
