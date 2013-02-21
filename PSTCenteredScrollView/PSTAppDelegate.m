//
//  PSTAppDelegate.m
//  PSTCenteredScrollView
//
//  Created by Peter Steinberger on 2/21/13.
//  Copyright (c) 2013 PSPDFKit. All rights reserved.
//

#import "PSTAppDelegate.h"
#import "PSTViewController.h"
#import "PSTEdgeInsetCenteredScrollView.h"
#import "PSTLayoutSubviewCenteredScrollView.h"
#import "PSTContentOffsetCenteredScrollView.h"

@implementation PSTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UITabBarController *tabController = [[UITabBarController alloc] initWithNibName:nil bundle:nil];

    tabController.viewControllers = @[[[PSTViewController alloc] initWithScrollViewClass:PSTLayoutSubviewCenteredScrollView.class],
                                      [[PSTViewController alloc] initWithScrollViewClass:PSTEdgeInsetCenteredScrollView.class],
                                      [[PSTViewController alloc] initWithScrollViewClass:PSTContentOffsetCenteredScrollView.class]];

    self.window.rootViewController = tabController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
