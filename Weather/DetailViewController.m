//
//  DetailViewController.m
//  Weather
//
//  Created by Elle Ti on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (instancetype)initWithCity:(City *)city
{
    if (self = [super init])
    {
        _city = city;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self showWeatherDetails];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showWeatherDetails
{
    [self cityInformation];
}

- (void)cityInformation
{
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    cityLabel.translatesAutoresizingMaskIntoConstraints = NO;
    cityLabel.text = [NSString stringWithFormat:@"%@", self.city.name];
    [self.view addSubview:cityLabel];
    
    NSLayoutConstraint *cityLabelXConstraint = [NSLayoutConstraint constraintWithItem:cityLabel
                                                                           attribute:NSLayoutAttributeCenterX
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:self.view
                                                                           attribute:NSLayoutAttributeCenterX
                                                                          multiplier:1.0
                                                                            constant:0.0];
    NSLayoutConstraint *cityLabelYConstraint = [NSLayoutConstraint constraintWithItem:cityLabel
                                                                            attribute:NSLayoutAttributeCenterY
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.view
                                                                            attribute:NSLayoutAttributeCenterY
                                                                           multiplier:0.5
                                                                             constant:0.0];
    
    [NSLayoutConstraint activateConstraints:@[cityLabelXConstraint, cityLabelYConstraint]];
}

@end
