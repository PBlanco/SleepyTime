//
//  STViewController.m
//  SleepyTime
//
//  Created by Peter  Blanco on 4/1/14.
//  Copyright (c) 2014 Blancotech. All rights reserved.
//

#import "STViewController.h"
#import "STTimeController.h"
#import "STCustomTVC.h"


@interface STViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel1;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel2;
@property (nonatomic, strong)STTimeController *timeController;
@end

@implementation STViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [self.navigationController setNavigationBarHidden:YES];
    self.timeController = [[STTimeController alloc]init];
    
    //Set custom font
    [self.titleLabel1 setFont:[UIFont fontWithName:@"PTRegularItalic" size:42]];
    [self.titleLabel2 setFont:[UIFont fontWithName:@"PTRegularItalic" size:42]];
    
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"sleepNow"]) {
        STCustomTVC *destViewController = segue.destinationViewController;
        [destViewController.navigationController setNavigationBarHidden:NO];
        destViewController.timesArray = [self.timeController getWakeupTimesFor:[NSDate date]];
    }
}

@end
