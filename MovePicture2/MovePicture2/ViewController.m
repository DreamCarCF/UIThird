//
//  ViewController.m
//  MovePicture2
//
//  Created by 曹丰 on 15/7/29.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *_view1;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _view1=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    _view1.backgroundColor=[UIColor redColor];
    _view1.alpha=0.5;
    _view1.layer.cornerRadius=10;
    [self.view addSubview:_view1];
    
[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(back) userInfo:nil repeats:YES];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)back
{
    
    [UIView animateWithDuration:3.0 animations:^{
        
        _view1.frame=CGRectMake(200, 550, 100, 100);
        _view1.backgroundColor=[UIColor blueColor];
        
        
    }completion:^(BOOL finished){
        
        [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(go) userInfo:nil repeats:YES];
    }];
    
    
}
-(void)go
{
    [UIView animateWithDuration:3.0 animations:^{
        
        _view1.frame=CGRectMake(0, 0, 100, 100);
        _view1.backgroundColor=[UIColor blueColor];
        
        
    }completion:^(BOOL finished){
        
        [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(back) userInfo:nil repeats:YES];
    }];

    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
