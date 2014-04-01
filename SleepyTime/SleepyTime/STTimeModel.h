//
//  STTimeModel.h
//  SleepyTime
//
//  Created by Peter  Blanco on 4/1/14.
//  Copyright (c) 2014 Blancotech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface STTimeModel : NSObject

-(id)initWithTime:(NSString *)time andHoursOfSleep:(NSString *)hours;

@property (readonly, strong) NSString *time;
@property (readonly, strong) NSString *hoursOfSleep;


@end
