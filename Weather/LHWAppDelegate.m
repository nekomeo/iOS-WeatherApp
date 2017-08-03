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
    City *vancouver = [[City alloc] initWithName:@"Vancouver" andTemperature:21 andDescription:@"Overcast" andImage:[UIImage imageNamed:@"partly-cloudy"]];
    City *calgary = [[City alloc] initWithName:@"Calgary" andTemperature:22 andDescription:@"Sunny" andImage:[UIImage imageNamed:@"Sunny"]];
    City *london = [[City alloc] initWithName:@"London" andTemperature:18 andDescription:@"Foggy" andImage:[UIImage imageNamed:@"fog"]];
    City *tokyo = [[City alloc] initWithName:@"Tokyo" andTemperature:26 andDescription:@"Cloudy" andImage:[UIImage imageNamed:@"cloudy-night"]];
    City *antarctica = [[City alloc] initWithName:@"Amundsen-Scott South Pole Station" andTemperature:-44 andDescription:@"Snowing" andImage:[UIImage imageNamed:@"snow"]];
    
    
    CityViewController *vancouverCVC = [[CityViewController alloc] initWithCity:vancouver];
    CityViewController *calgaryCVC = [[CityViewController alloc] initWithCity:calgary];
    CityViewController *londonCVC = [[CityViewController alloc] initWithCity:london];
    CityViewController *tokyoCVC = [[CityViewController alloc] initWithCity:tokyo];
    CityViewController *antarcticaCVC = [[CityViewController alloc] initWithCity:antarctica];
    
    UINavigationController *vancouverVC = [[UINavigationController alloc] initWithRootViewController:vancouverCVC];
    vancouverVC.title = @"Vancouver";
    UINavigationController *calgaryVC = [[UINavigationController alloc] initWithRootViewController:calgaryCVC];
    calgaryVC.title = @"Calgary";
    UINavigationController *londonVC = [[UINavigationController alloc] initWithRootViewController:londonCVC];
    londonVC.title = @"London";
    UINavigationController *tokyoVC = [[UINavigationController alloc] initWithRootViewController:tokyoCVC];
    tokyoVC.title = @"Tokyo";
    UINavigationController *antarcticaVC = [[UINavigationController alloc] initWithRootViewController:antarcticaCVC];
    antarcticaVC.title = @"Antarctica";
    
    [tabBarArray addObject:vancouverVC];
    [tabBarArray addObject:calgaryVC];
    [tabBarArray addObject:londonVC];
    [tabBarArray addObject:tokyoVC];
    [tabBarArray addObject:antarcticaVC];
    
    tabBarController.viewControllers = tabBarArray;
    
    self.window.rootViewController = tabBarController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
