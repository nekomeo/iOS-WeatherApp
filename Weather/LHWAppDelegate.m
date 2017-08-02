//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    City *vancouver = [[City alloc] initWithName:@"Vancouver" andTemperature:21 andDescription:@"Overcast"];
    
    // Create a Tab Bar Controller
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
