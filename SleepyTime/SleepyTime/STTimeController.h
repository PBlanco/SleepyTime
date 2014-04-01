//
//  STTimeController.h
//  SleepyTime
//
//  Created by Peter  Blanco on 4/1/14.
//  Copyright (c) 2014 Blancotech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface STTimeController : NSObject

- (NSArray *)getWakeupTimesFor:(NSDate *)date;
- (NSArray *)getSleepTimesFor:(NSDate *)date;

@end
