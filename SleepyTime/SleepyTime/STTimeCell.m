//
//  STTimeCell.m
//  SleepyTime
//
//  Created by Peter  Blanco on 4/1/14.
//  Copyright (c) 2014 Blancotech. All rights reserved.
//

#import "STTimeCell.h"

@implementation STTimeCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}




-(void)colorForIndex:(NSInteger) index {
    float val = ((float)index / (float)4) * 0.9;
     UIColor *textcolor = [UIColor colorWithRed:132/255.0f green:val blue: 0.0 alpha:1.0];
    self.timeLabel.textColor = textcolor;
}


@end
