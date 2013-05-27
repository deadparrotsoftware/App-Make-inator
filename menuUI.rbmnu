#tag Menu
Begin Menu menuUI
   Begin MenuItem LayoutMenu
      SpecialMenu = 0
      Text = "Layout"
      Index = -2147483648
      AutoEnable = True
      Begin MenuItem CopyLayoutFrom
         SpecialMenu = 0
         Text = "Copy Layout From..."
         Index = -2147483648
         AutoEnable = False
         SubMenu = True
         Begin MenuItem CopyLayoutFromWeb
            SpecialMenu = 0
            Text = "Web"
            Index = -2147483648
            AutoEnable = True
         End
         Begin MenuItem CopyLayoutFromDesktop
            SpecialMenu = 0
            Text = "Desktop"
            Index = -2147483648
            AutoEnable = True
         End
         Begin MenuItem CopyLayoutFromPhone
            SpecialMenu = 0
            Text = "Phone"
            Index = -2147483648
            AutoEnable = True
         End
         Begin MenuItem CopyLayoutFromTablet
            SpecialMenu = 0
            Text = "Tablet"
            Index = -2147483648
            AutoEnable = True
         End
      End
   End
End
#tag EndMenu
