//
//  ViewController.m
//  TestHorizTable
//
//  Created by Zhu Yu on 14-1-20.
//  Copyright (c) 2014年 hollysmart. All rights reserved.
//

#import "ViewController.h"
#import "ControlVariables.h"
#import "HorizontalCell.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *containerView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSArray * array=[NSArray arrayWithObjects:@"first cell",@"second cell",@"third cell",@"fourth cell", nil];
    
    _feeds=[NSMutableArray array];
    [_feeds addObjectsFromArray:array];
    
    self.horizontalTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kCellHeight, kTableLength)];
    self.horizontalTableView.showsVerticalScrollIndicator = NO;
    self.horizontalTableView.showsHorizontalScrollIndicator = NO;
    self.horizontalTableView.transform = CGAffineTransformMakeRotation(-M_PI * 0.5);
    [self.horizontalTableView setFrame:CGRectMake(kRowHorizontalPadding * 0.5, kRowVerticalPadding * 0.5, kTableLength - kRowHorizontalPadding, kCellHeight)];
    
    self.horizontalTableView.rowHeight = kCellWidth;
    self.horizontalTableView.backgroundColor = kHorizontalTableBackgroundColor;
    
    self.horizontalTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.horizontalTableView.separatorColor = [UIColor clearColor];
    
    self.horizontalTableView.dataSource = self;
    self.horizontalTableView.delegate = self;
    
    [self.containerView addSubview:self.horizontalTableView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View Data Source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.feeds count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"FeedCell";
    
    HorizontalCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil)
    {
        cell = [[HorizontalCell alloc] initWithFrame:CGRectMake(0, 0, kCellWidth, kCellHeight)];
    }
    
    cell.textLabel.text = _feeds[indexPath.row];
    
    return cell;
}

@end
