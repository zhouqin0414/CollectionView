//
//  ViewController.h
//  CollectionView
//
//  Created by 周钦 on 13-10-16.
//  Copyright (c) 2013年 周钦. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomCell.h"
@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, copy)CustomCell *lCell;
@end
