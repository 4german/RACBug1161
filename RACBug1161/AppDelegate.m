//
//  AppDelegate.m
//  RACBug1161
//
//  Created by Andrew German on 2014-03-13.
//  Copyright (c) 2014 RAC Bug Report. All rights reserved.
//

#import "AppDelegate.h"
#import "CollectionViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

	// Override point for customization after application launch.

	CollectionViewController * collectionViewController = [[CollectionViewController alloc] initWithCollectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
	UINavigationController * navigationController = [[UINavigationController alloc] initWithRootViewController:collectionViewController];
	self.window.rootViewController = navigationController;
	
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
