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
#import <QuartzCore/QuartzCore.h>


@interface STViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel1;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel2;
@property (weak, nonatomic) IBOutlet UIButton *sleepNowButton;
@property (weak, nonatomic) IBOutlet UIButton *wakeUpAtButton;
@property (nonatomic, strong)STTimeController *timeController;
- (void)setButtonFrame:(UIButton *)button;
- (IBAction)wakeupAtButtonPressed:(UIButton *)sender;
- (IBAction)cancelButtonPressed:(UIButton *)sender;

//Picker View Stuff
@property (weak, nonatomic) IBOutlet UIView *pickerViewContainer;
@property (weak, nonatomic) IBOutlet UIButton *continueButton;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation STViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.timeController = [[STTimeController alloc]init];
    
    //Set custom font
    [self.titleLabel1 setFont:[UIFont fontWithName:@"PTSans-Italic" size:42]];
    [self.titleLabel2 setFont:[UIFont fontWithName:@"PTSans-Italic" size:42]];
    
    //setup buttons
    [self setButtonFrame:self.sleepNowButton];
    [self setButtonFrame:self.wakeUpAtButton];
    
     [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    [self setupDatePicker];

    
}
-(void)setupDatePicker
{
    [self.datePicker setDatePickerMode:UIDatePickerModeTime];
    [self setButtonFrame:self.cancelButton];
    [self setButtonFrame:self.continueButton];
    [self.pickerViewContainer setHidden:YES];

}


- (void)setButtonFrame:(UIButton *)button{
    button.layer.cornerRadius = 15;
    button.layer.borderWidth = 2;
    button.layer.borderColor = [UIColor colorWithRed:167/255.0f green:170/255.0f blue:169/255.0f alpha:1.0f].CGColor;
    
}

- (IBAction)wakeupAtButtonPressed:(UIButton *)sender {
    self.datePicker.date = [NSDate date];
    self.pickerViewContainer.alpha  = 0;
    [UIView animateWithDuration:.4 animations:^{
        [self.pickerViewContainer setHidden:NO];
        self.pickerViewContainer.alpha  = 1;
    } completion:^(BOOL finished) { /*Add if needed*/ }];
}

- (IBAction)cancelButtonPressed:(UIButton *)sender {
    self.pickerViewContainer.alpha  = 1;
    [UIView animateWithDuration:.4 animations:^{
        self.pickerViewContainer.alpha  = 0;
    } completion:^(BOOL finished) {
        [self.pickerViewContainer setHidden:YES];
    }];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"sleepNow"]) {
        STCustomTVC *destViewController = segue.destinationViewController;
        [destViewController.navigationController setNavigationBarHidden:NO];
        destViewController.timesArray = [self.timeController getWakeupTimesFor:[NSDate date]];
    }
    else if ([segue.identifier isEqualToString:@"sleepAt"]) {
        STCustomTVC *destViewController = segue.destinationViewController;
        [destViewController.navigationController setNavigationBarHidden:NO];
        destViewController.timesArray = [self.timeController getSleepTimesFor:self.datePicker.date];
        [self.pickerViewContainer setHidden:YES];
    }
}

@end
