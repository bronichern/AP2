   M S B A M L   `   `   `  ����D  @WPFClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:WPFClient.UserControlsWPFClient.UserControls  5      #    WPFClient.UserControls.Loader   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:WPFClient.UserControls     5      -   5        $��uc��5   7     � 	Resources  5	         LoaderStoryBoard g� RepeatBehavior g� 	BeginTime �� 
TargetName �� TargetProperty O� KeyTime O� Value��%  &	        �� 5
   
   $ Forever��6.   .��5      U� $ 00:00:00X�6,   $ loader1��6A   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6a   .\�5      �� $ 00:00:02��6'   $	 360Q�6:   5      5      5       � Triggers 5      :� 5   
    :� RoutedEvent$ FrameworkElement.Loaded��6   .[�5      �� #��[  6   5      .��5      �   5   
   ��%    5      	 � RowDefinitions	 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��5q�6A   $��0��6L   $��Center=�6Y   $��Center=�5      
�������$y�Visible=�6>   ��5      �� 
 �� Path$
 Message� �� ElementName$ uc��5   >   A� 5   
   -   5         A�Name$ loader1��5      $��1��6#   $��Center=�60   $��139,10,141,0q�6M   $��20��6c    J� RenderTransformOrigin$	 1,1&�6x   z�5      V� 5       .~�5!      �� �� 5"      �� 5#      5$      ��5&      �� 5'       �� EndPoint$ 0.445,0.997&�6&    �� 
StartPoint$ 0.555,0.003&�6=   .��5(      �  � Color$ White��6#    � Offset$ 0Q�61   � 5)      $ 	#FF470037��6#   $ 1Q�65   5*      5,      5-      5.      