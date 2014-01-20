//
//  ViewController.h
//  TestHorizTable
//
//  Created by Zhu Yu on 14-1-20.
//  Copyright (c) 2014年 hollysmart. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView * horizontalTableView;
@property (nonatomic,strong) NSMutableArray * feeds;

@end
