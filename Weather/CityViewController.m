//
//  CityViewController.m
//  Weather
//
//  Created by Elle Ti on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"

@interface CityViewController ()

@property (nonatomic, strong) UIView *cityView;
@property (nonatomic, strong) UIButton *detailButton;

@end

@implementation CityViewController

- (instancetype)initWithName:(City *)city
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

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
    DetailViewController *detailVC = [[DetailViewController alloc] init];
}

@end
