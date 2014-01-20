//
//  HorizontalCell.m
//  TestHorizTable
//
//  Created by Zhu Yu on 14-1-20.
//  Copyright (c) 2014年 hollysmart. All rights reserved.
//

#import "HorizontalCell.h"
#import "ControlVariables.h"

@implementation HorizontalCell

- (id)initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:frame]) {
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(kArticleCellHorizontalInnerPadding, kArticleCellVerticalInnerPadding, kCellWidth - kArticleCellHorizontalInnerPadding * 2, kCellHeight - kArticleCellVerticalInnerPadding * 2)];
        self.titleLabel.opaque = YES;
        self.titleLabel.backgroundColor = [UIColor colorWithRed:0 green:0.4745098 blue:0.29019808 alpha:0.9];
        self.titleLabel.textColor = [UIColor whiteColor];
        self.titleLabel.font = [UIFont boldSystemFontOfSize:11];
//        self.titleLabel.numberOfLines = 2;
        self.titleLabel.textAlignment=NSTextAlignmentRight;
        [self.contentView addSubview:self.titleLabel];
        
        self.backgroundColor = [UIColor colorWithRed:0 green:0.40784314 blue:0.21568627 alpha:1.0];
        self.selectedBackgroundView = [[UIView alloc] initWithFrame:self.titleLabel.frame];
        self.selectedBackgroundView.backgroundColor = kHorizontalTableSelectedBackgroundColor;
        
        self.transform = CGAffineTransformMakeRotation(M_PI * 0.5);
    }
    
    return self;
}


@end
