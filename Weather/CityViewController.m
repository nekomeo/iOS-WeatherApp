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
    
    UIView *cityView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    self.view = cityView;
    self.view.backgroundColor = [UIColor blueColor];
    
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

@end
