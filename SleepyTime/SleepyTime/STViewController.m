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

@end

@implementation STViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"sleepNow"]) {
        STCustomTVC *destViewController = segue.destinationViewController;
    }
}

@end
