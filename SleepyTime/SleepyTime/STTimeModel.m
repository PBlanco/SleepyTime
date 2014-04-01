//
//  STTimeModel.m
//  SleepyTime
//
//  Created by Peter  Blanco on 4/1/14.
//  Copyright (c) 2014 Blancotech. All rights reserved.
//

#import "STTimeModel.h"

@implementation STTimeModel
@synthesize time = _time;
@synthesize hoursOfSleep = _hoursOfSleep;

-(id)initWithTime:(NSString *)time andHoursOfSleep:(NSString *)hours
{
    self = [super init];
    if (self) {
        _time = time;
        _hoursOfSleep = hours;
    }
    return self;
}

@end
