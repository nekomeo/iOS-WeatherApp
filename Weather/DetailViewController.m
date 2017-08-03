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
    self.view.backgroundColor = [UIColor grayColor];
    
    [self showWeatherDetails];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showWeatherDetails
{
    [self detailCityLabel];
    [self detailTempLabel];
    [self detailDescLabel];
    [self detailImage];
}

- (void)detailCityLabel
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

- (void)detailTempLabel
{
    UILabel *tempLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    tempLabel.translatesAutoresizingMaskIntoConstraints = NO;
    tempLabel.text = [NSString stringWithFormat:@"Temperature: %li C", self.city.temperature];
    [self.view addSubview:tempLabel];
    
    NSLayoutConstraint *tempLabelXConstraint = [NSLayoutConstraint constraintWithItem:tempLabel
                                                                            attribute:NSLayoutAttributeCenterX
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.view
                                                                            attribute:NSLayoutAttributeCenterX
                                                                           multiplier:1.0
                                                                             constant:0.0];
    
    NSLayoutConstraint *tempLabelYConstraint = [NSLayoutConstraint constraintWithItem:tempLabel
                                                                            attribute:NSLayoutAttributeCenterY
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.view
                                                                            attribute:NSLayoutAttributeCenterY
                                                                           multiplier:0.5
                                                                             constant:20.0];
    
    [NSLayoutConstraint activateConstraints:@[tempLabelXConstraint, tempLabelYConstraint]];
}

- (void)detailDescLabel
{
    UILabel *descLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    descLabel.translatesAutoresizingMaskIntoConstraints = NO;
    descLabel.text = [NSString stringWithFormat:@"Currently: %@", self.city.weatherDescription];
    [self.view addSubview:descLabel];
    
    NSLayoutConstraint *tempLabelXConstraint = [NSLayoutConstraint constraintWithItem:descLabel
                                                                            attribute:NSLayoutAttributeCenterX
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.view
                                                                            attribute:NSLayoutAttributeCenterX
                                                                           multiplier:1.0
                                                                             constant:0.0];
    
    NSLayoutConstraint *tempLabelYConstraint = [NSLayoutConstraint constraintWithItem:descLabel
                                                                            attribute:NSLayoutAttributeCenterY
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.view
                                                                            attribute:NSLayoutAttributeCenterY
                                                                           multiplier:0.5
                                                                             constant:40.0];
    
    [NSLayoutConstraint activateConstraints:@[tempLabelXConstraint, tempLabelYConstraint]];
}

- (void)detailImage
{
    UIImageView *weatherImage = [[UIImageView alloc] initWithFrame:CGRectZero];
    weatherImage.translatesAutoresizingMaskIntoConstraints = NO;
    weatherImage.image = self.city.weatherImage;
    [self.view addSubview:weatherImage];
    
    NSLayoutConstraint *imageXConstraint = [NSLayoutConstraint constraintWithItem:weatherImage
                                                                        attribute:NSLayoutAttributeCenterX
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.view
                                                                        attribute:NSLayoutAttributeCenterX
                                                                       multiplier:1.0
                                                                         constant:0.0];
    
    NSLayoutConstraint *imageYConstraint = [NSLayoutConstraint constraintWithItem:weatherImage
                                                                        attribute:NSLayoutAttributeCenterY
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.view
                                                                        attribute:NSLayoutAttributeCenterY
                                                                       multiplier:1.0
                                                                         constant:0.0];
    
    NSLayoutConstraint *imageWidthConstraint = [NSLayoutConstraint constraintWithItem:weatherImage
                                                                            attribute:NSLayoutAttributeWidth
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:nil
                                                                            attribute:NSLayoutAttributeNotAnAttribute
                                                                           multiplier:1.0
                                                                             constant:50.0];
    
    NSLayoutConstraint *imageHeightConstraint = [NSLayoutConstraint constraintWithItem:weatherImage
                                                                             attribute:NSLayoutAttributeHeight
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:nil
                                                                             attribute:NSLayoutAttributeNotAnAttribute
                                                                            multiplier:1.0
                                                                              constant:50.0];
    
    [NSLayoutConstraint activateConstraints:@[imageXConstraint, imageYConstraint, imageWidthConstraint, imageHeightConstraint]];
}

@end
