TDRoundedNavigationBar
===================

TDRoundedNavigationBar is UINavigationBar subclass that you can use in your own projects. It supercharges UINavigationBar with these features:

> **Features:**
> - **Custom bar height.** Make you navigation bar taller or shorter.
> - **Custom bar width.** Set the space you want to leave on the left and right of the navigation bar.
> - **Rounded corners using any radius.** You can even leave the corners square by setting radius to zero.
> - **Vertical Bar positioning.** Set the distance you want from the top of the screen when the status bar is hidden.

----------


How to use
-------------
Just drag the "TDRoundedNavigationBar" inside your project and use the following import statement":
> \#import "TDRoundedNavigationBar.h"

*then either:*

Through Interface Builder
> Open your Storyboard find your Navigation Bar (probably in your Navigation Controller) and set it's Custom Class property to "TDRoundedNavigationBar". That's it!

Through code 
> Instantiate using the **-initWithFrame:** method

Customization
-------------
You can customise the properties of TDRoundedNavigationBar inside TDRoundedNavigationBar.m. 
> **kAppNavBarHeight ** sets the bar's height
> **kAppNavBarRadius** sets the corner radius
> **kAppNavBarSideSpacing** set the spacing on the left and right
> **kAppNavBarSpacingWhenStatusBarHidden** set the distance from the top of the screen when the status bar is hidden so that the bar has a nice floating effect.

CocoaPods
-------------
CocoaPods support coming soon

Apps that use TDRoundedNavigationBar
-------------
Tunedeck for Spotify (http://tunedeck.navideck.com)
