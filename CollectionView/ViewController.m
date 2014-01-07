//
//  ViewController.m
//  CollectionView
//
//  Created by 周钦 on 13-10-16.
//  Copyright (c) 2013年 周钦. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
#import "NewViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
    UICollectionViewFlowLayout *lCollectionView=[[UICollectionViewFlowLayout alloc]init];
    [lCollectionView setItemSize:CGSizeMake(50, 50)];
    [lCollectionView setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    [lCollectionView setMinimumLineSpacing:20];
    lCollectionView.sectionInset=UIEdgeInsetsMake(0, 50, 0, 0);
    //以上是添加的Collect的样式，设置大小位子，间隔等
    
    UICollectionView *CollectionView = [[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:lCollectionView];
    CollectionView.dataSource=self;
    CollectionView.delegate=self;
    [CollectionView registerClass:[CustomCell class] forCellWithReuseIdentifier:@"cell"];
    [self.view addSubview:CollectionView];
    
     [CollectionView setBackgroundColor:[UIColor whiteColor]];
    //
    
    
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    if ([indexPath row]==19) {
        return CGSizeMake(200, 200);
    }
    return CGSizeMake(50, 50);
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 20;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 4;
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NewViewController *lNewViewControl=[[NewViewController alloc]init];
    NSInteger value = [indexPath section]*20+[indexPath row]+1;
    UIImage *lImage=[UIImage imageNamed:[NSString stringWithFormat: @"%li.jpg",value]];
    
    lNewViewControl.lImage11=lImage;
//    NewViewController *lNewView=[[NewViewController alloc]init];
    [self presentViewController:lNewViewControl animated:YES completion:nil];
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *lCellID=@"cell";
    _lCell=[collectionView dequeueReusableCellWithReuseIdentifier:lCellID forIndexPath:indexPath];
//    NSInteger section = [indexPath section];
//    NSInteger row = [indexPath row];
    NSInteger value = [indexPath section]*20+[indexPath row]+1;
    _lCell.lImageView.image = [UIImage imageNamed:[NSString stringWithFormat: @"%li.jpg",value]];
    
    return _lCell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
