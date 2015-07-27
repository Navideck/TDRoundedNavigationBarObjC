TDRoundedNavigationBar
===================

TDRoundedNavigationBar is UINavigationBar subclass that you can use in your own projects. It supercharges UINavigationBar with these features:

> **Features:**

> - Custom bar height. Make you navigation bar taller or shorter.
> - Custom bar width. Set the space you want to leave on the left and right of the navigation bar.
> - Rounded corners using any radius. You can even leave the corners square by setting radius to zero.
> - Bar positioning. Set the distance you want from the top of the screen when the status bar is hidden.

----------


How to use
-------------
The simplest way to use it through Interface Builder
> Just drag the "TDRoundedNavigationBar" inside your project. Then open your Storyboard and go to the properties of your Navigation Controller. Find the Navigation Bar and set it's Custom Class property to "TDRoundedNavigationBar". That's it!

Customization
-------------
You can customise the properties of TDRoundedNavigationBar inside TDRoundedNavigationBar.m. 
> **kAppNavBarHeight ** sets the bar's height
> **kAppNavBarRadius** sets the corner radius
> **kAppNavBarSideSpacing** set the spacing on the left and right
> **kAppNavBarSpacingWhenStatusBarHidden** set the distance from the top of the screen when the status bar is hidden so that the bar has a nice floating effect.

Cocoapods
-------------
Cocoapods support coming soon

Apps that use ..
-------------
http://tunedeck.spotify.com
