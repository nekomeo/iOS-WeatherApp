//
//  City.m
//  Weather
//
//  Created by Elle Ti on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@interface City()

@end

@implementation City

- (instancetype)initWithName:(NSString *)name andTemperature:(NSInteger)temperature andDescription:(NSString *)weatherDescription andImage:(UIImage *)weatherImage
{
    if (self = [super init])
    {
        _name = name;
        _temperature = temperature;
        _weatherDescription = weatherDescription;
        _weatherImage = weatherImage;
    }
    return self;
}

@end
