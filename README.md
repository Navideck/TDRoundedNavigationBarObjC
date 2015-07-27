TDRoundedNavigationBar
===================

![TDRoundedNavigationBar](https://github.com/Navideck/TDRoundedNavigationBar/raw/master/TDRoundedNavigationBar.gif)

TDRoundedNavigationBar is an iOS UINavigationBar subclass that you can use in your own projects. It supercharges UINavigationBar with these features:

> **Features:**
> - **Rounded corners.** Round the corner's of your navigation bar using any radius. You can even leave the corners square by setting radius to zero.
> - **Custom bar height.** Make you navigation bar taller or shorter.
> - **Custom bar width.** Set the space you want to leave on the left and right of the navigation bar.
> - **Auto item positioning**. TDRoundedNavigationBar will position automatically every Navigation Bar element including title, back button or custom UIBarButtonItems to adapt to the custom size you 've set.
> - **Vertical Bar positioning.** Set the distance you want from the top of the screen when the status bar is hidden.
> - **iPhone and iPad support**.
> - **Supports any orientation** (portrait or landscape).


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
> - **kAppNavBarHeight ** sets the bar's height
> - **kAppNavBarRadius** sets the corner radius
> - **kAppNavBarSideSpacing** set the spacing on the left and right
> - **kAppNavBarSpacingWhenStatusBarHidden** set the distance from the top of the screen when the status bar is hidden so that the bar has a nice floating effect.

CocoaPods
-------------
CocoaPods support coming soon

Apps that use TDRoundedNavigationBar
-------------
<img src="http://tunedeck.navideck.com/img/Tunedeck-AppIcon.png" width="48"> Tunedeck for Spotify (http://tunedeck.navideck.com)