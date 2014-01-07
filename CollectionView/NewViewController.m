//
//  NewViewController.m
//  CollectionView
//
//  Created by 周钦 on 13-10-16.
//  Copyright (c) 2013年 周钦. All rights reserved.
//

#import "NewViewController.h"

@interface NewViewController ()

@end

@implementation NewViewController

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
    // Do any additional setup after loading the view from its nib.
    
//    _lImage11=[[UIImage alloc]init];
    
    _lImageGirl=[[UIImageView alloc]initWithFrame:CGRectMake(160-_lImage11.size.width/4, 0,_lImage11.size.width/2, _lImage11.size.height/2)];
    [_lImageGirl setImage:_lImage11];
    [self.view addSubview:_lImageGirl];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goBack:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
