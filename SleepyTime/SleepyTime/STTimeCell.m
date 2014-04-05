//
//  STTimeCell.m
//  SleepyTime
//
//  Created by Peter  Blanco on 4/1/14.
//  Copyright (c) 2014 Blancotech. All rights reserved.
//

#import "STTimeCell.h"

@implementation STTimeCell

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.timeLabel setFont:[UIFont fontWithName:@"PTSans-Bold" size:32]];
    [self.hoursLabel setFont:[UIFont fontWithName:@"PT Sans" size:20]];
}



-(void)colorForIndex:(NSInteger) index {
    float val = ((float)index / (float)4) * 0.9;
     UIColor *textcolor = [UIColor colorWithRed:200/255.0f green:val blue: 0.0 alpha:1.0];
    self.hoursLabel.textColor = textcolor;
    
}


@end
