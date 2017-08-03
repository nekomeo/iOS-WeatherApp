//
//  City.h
//  Weather
//
//  Created by Elle Ti on 2017-08-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger temperature;
@property (nonatomic, strong) NSString *weatherDescription;
@property (nonatomic, strong) UIImage *weatherImage;

- (instancetype)initWithName:(NSString *)name andTemperature:(NSInteger)temperature andDescription:(NSString *)weatherDescription andImage:(UIImage *)weatherImage;

@end
