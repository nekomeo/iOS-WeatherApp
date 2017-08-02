//
//  City.h
//  Weather
//
//  Created by Elle Ti on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

- (instancetype)initWithName:(NSString *)name andTemperature:(NSInteger)temperature andDescription:(NSString *)weatherDescription;

@end
