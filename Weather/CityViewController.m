//
//  CityViewController.m
//  Weather
//
//  Created by Elle Ti on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailViewController.h"

@interface CityViewController ()

@end

@implementation CityViewController

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
    
    [self buttonDetails];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)buttonDetails
{
    UIButton *detailButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [detailButton setTitle:self.city.name forState:UIControlStateNormal];
    [detailButton addTarget:self action:@selector(detailViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:detailButton];
    detailButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    // Button Constraints
    NSLayoutConstraint *buttonXConstraint = [NSLayoutConstraint constraintWithItem:detailButton
                                                                      attribute:NSLayoutAttributeCenterX
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.view
                                                                      attribute:NSLayoutAttributeCenterX
                                                                     multiplier:1.0
                                                                       constant:0.0];
    
    NSLayoutConstraint *buttonYConstraint = [NSLayoutConstraint constraintWithItem:detailButton
                                                                      attribute:NSLayoutAttributeCenterY
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.view
                                                                      attribute:NSLayoutAttributeCenterY
                                                                     multiplier:1.0
                                                                       constant:0.0];
    
    [NSLayoutConstraint activateConstraints:@[buttonXConstraint, buttonYConstraint]];
    
}


- (void)detailViewController
{
    DetailViewController *detailVC = [[DetailViewController alloc] initWithCity:self.city];
    [self.navigationController pushViewController:detailVC animated:YES];
}

@end

