//
//  TDNavbar.m
//  TunedeckSpotify
//
//  Created by Fotis Dimanidis on 7/2/15.
//  Copyright (c) 2015 navideck. All rights reserved.
//

#import "TDRoundedNavigationBar.h"

//Set your properties here
#define kAppNavBarHeight 60.0
#define kAppNavBarRadius 7.5    //Set to 0.0 for square corners
#define kAppNavBarSideSpacing 20.0
#define kAppNavBarSpacingWhenStatusBarHidden 5.0

@implementation TDRoundedNavigationBar

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

#pragma mark - Initializers
- (instancetype)initWithFrame:(CGRect)frame {   //For code initialization
    self = [super initWithFrame:frame];
    if (self) {
        [self setupAppearance];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {    //For IB initialization
    self = [super initWithCoder:coder];
    if (self) {
        [self setupAppearance];
    }
    return self;
}

- (void)setupAppearance {
    // Compensate for height change by moving back button
    CGFloat offset = (44 - kAppNavBarHeight)/2;
    
    [[TDRoundedNavigationBar appearance] setTitleVerticalPositionAdjustment:offset forBarMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearanceWhenContainedIn:[TDRoundedNavigationBar class], nil] setBackgroundVerticalPositionAdjustment:offset forBarMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearanceWhenContainedIn:[TDRoundedNavigationBar class], nil] setBackButtonBackgroundVerticalPositionAdjustment:offset forBarMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearanceWhenContainedIn:[TDRoundedNavigationBar class], nil] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, offset) forBarMetrics:UIBarMetricsDefault];
    //        if (_barColor){
    //            self.barTintColor = _barColor;
    //        }
}

#pragma mark - Bar customization
- (void)layoutSubviews {
    [super layoutSubviews];
    
#pragma mark - Round the corners
    CALayer *capa = self.layer;
    CGRect bounds = capa.bounds;
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:bounds
                                                   byRoundingCorners:(UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomLeft | UIRectCornerBottomRight)
                                                         cornerRadii:CGSizeMake(kAppNavBarRadius, kAppNavBarRadius)];
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = bounds;
    maskLayer.path = maskPath.CGPath;
    [capa addSublayer:maskLayer];
    capa.mask = maskLayer;
    
#pragma mark - Repositiona back button arrow
    // As there's no API to reposition the back button's arrow under iOS 7+ we do it here
    for (UIView *view in self.subviews) {
        
        // The arrow is a class of type _UINavigationBarBackIndicatorView. Any bar button item is of type UINavigationButton.
        if ([NSStringFromClass([view class]) isEqualToString:@"_UINavigationBarBackIndicatorView"] || [NSStringFromClass([view class]) isEqualToString:@"UINavigationButton"]) {
            CGRect frame = view.frame;
            if (view.tag == 0) {
                // On the first layout we work out what the actual position should be by applying our offset to the default position.
                frame.origin.y = (kAppNavBarHeight-view.frame.size.height)/2;
//                frame.origin.y = frame.origin.y + (44 - kAppNavBarHeight)/2;  //Gives incorrect vertical allignment
                view.tag = frame.origin.y;
            }
            else{
                frame.origin.y = view.tag;
            }
            
            // Update the frame.
            view.frame = frame;
        }
    }
}

- (CGSize)sizeThatFits:(CGSize)size {   //Set bar & spacing size. Used then status bar is hidden to give some top space to our navigation bar.
    CGFloat computedHeight = kAppNavBarHeight;
    if ([UIApplication sharedApplication].isStatusBarHidden) {
        computedHeight += kAppNavBarSpacingWhenStatusBarHidden;
    }
    CGSize newSize = CGSizeMake(self.superview.bounds.size.width - kAppNavBarSideSpacing, computedHeight);
    return newSize;
}

- (void)setBounds:(CGRect)bounds {  //Set bar size
    [super setBounds:bounds];
    self.frame = CGRectMake(bounds.origin.x, bounds.origin.y, bounds.size.width, kAppNavBarHeight);
}

@end
