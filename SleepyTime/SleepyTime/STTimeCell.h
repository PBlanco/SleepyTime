//
//  STTimeCell.h
//  SleepyTime
//
//  Created by Peter  Blanco on 4/1/14.
//  Copyright (c) 2014 Blancotech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STTimeCell : UITableViewCell

-(void)colorForIndex:(NSInteger) index;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *hoursLabel;

@end
