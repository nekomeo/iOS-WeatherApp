//
//  DetailViewController.h
//  Weather
//
//  Created by Elle Ti on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CityViewController.h"

@interface DetailViewController : UIViewController

@property (nonatomic, weak) City *city;

- (instancetype)initWithCity:(City *)city;

@end
