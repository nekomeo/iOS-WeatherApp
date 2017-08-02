//
//  City.m
//  Weather
//
//  Created by Elle Ti on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@interface City()

@property (nonatomic, assign) NSInteger temperature;
@property (nonatomic, strong) NSString *weatherDescription;

@end

@implementation City

- (instancetype)initWithName:(NSString *)name andTemperature:(NSInteger)temperature andDescription:(NSString *)weatherDescription
{
    if (self = [super init])
    {
        _name = name;
        _temperature = temperature;
        _weatherDescription = weatherDescription;
    }
    return self;
}

@end
