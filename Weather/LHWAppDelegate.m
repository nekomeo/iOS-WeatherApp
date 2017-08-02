//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    NSMutableArray *tabBarArray = [NSMutableArray array];
    UITabBarController *tabBarController = [[UITabBarController alloc] init];

    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    City *vancouver = [[City alloc] initWithName:@"Vancouver" andTemperature:21 andDescription:@"Overcast"];
    
    // Create a Tab Bar Controller
    
    CityViewController *vancouverCVC = [[CityViewController alloc] initWithName:vancouver];
    
    UINavigationController *vancouverVC = [[UINavigationController alloc] initWithRootViewController:vancouverCVC];
    vancouverVC.title = @"Vancouver";
    
    [tabBarArray addObject:vancouverVC];
    
    tabBarController.viewControllers = tabBarArray;
    
    self.window.rootViewController = tabBarController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
