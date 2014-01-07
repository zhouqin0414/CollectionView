//
//  CustomCell.m
//  CollectionView
//
//  Created by 周钦 on 13-10-16.
//  Copyright (c) 2013年 周钦. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        _lImageView = [[UIImageView alloc]initWithFrame:self.contentView.bounds];
//        _lImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"1.jpg"] highlightedImage:[UIImage imageNamed:@"2.jpg"]];
        [self.contentView addSubview:_lImageView];
    }
    return self;
}






/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
