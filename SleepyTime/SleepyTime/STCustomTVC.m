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
@property (weak, nonatomic) IBOutlet UILabel *headerLabel;
@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;

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
