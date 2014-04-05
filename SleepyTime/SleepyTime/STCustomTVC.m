//
//  STCustomTVC.m
//  SleepyTime
//
//  Created by Peter  Blanco on 4/1/14.
//  Copyright (c) 2014 Blancotech. All rights reserved.
//

#import "STCustomTVC.h"
#import "STTimeModel.h"
#import "STTimeCell.h"

@interface STCustomTVC ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *header1;
@property (weak, nonatomic) IBOutlet UILabel *header2;


@end

@implementation STCustomTVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    self.tableView.tableFooterView = view;
    self.navigationController.title = @"SleepyTime";
    
    
    UIColor *kindofGreyishColor = [UIColor colorWithRed:167/255.0f green:170/255.0f blue:169/255.0f alpha:1.0f];
    
    //setup background colors
    self.view.backgroundColor = [UIColor blackColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.separatorColor = kindofGreyishColor;
    
    //Setup header labels
    [self.header1 setFont:[UIFont fontWithName:@"PT Sans" size:22]];
    [self.header2 setFont:[UIFont fontWithName:@"PTSans-Bold" size:22]];
    
    [self.header1 setTextColor:[UIColor whiteColor]];
    [self.header2 setTextColor:[UIColor whiteColor]];


}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timesArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *MyIdentifier = @"timeCell";
    STTimeCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell == nil) {
        cell = [[STTimeCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:MyIdentifier];
    }
    STTimeModel *timeObject = [self.timesArray objectAtIndex:[indexPath row]];

    [cell.timeLabel setText:timeObject.time];
    [cell.hoursLabel setText:timeObject.hoursOfSleep];
        
    [cell colorForIndex:[indexPath row]];
    
    return cell;
}



@end
