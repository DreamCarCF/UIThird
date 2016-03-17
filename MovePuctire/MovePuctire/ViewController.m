//
//  ViewController.m
//  MovePuctire
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
    _view1=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    _view1.backgroundColor=[UIColor redColor];
    _view1.alpha=0.5;
    [self.view addSubview:_view1];
    
            NSTimer *timer=[NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(back:) userInfo:nil repeats:YES];
        
    

}
-(void)back:(NSTimer *)timer
{
    
    [UIView animateWithDuration:3.0 animations:^{
        
       _view1.frame=CGRectMake(100, 100, 50, 50);
        _view1.backgroundColor=[UIColor blueColor];
        
        
    }completion:^(BOOL finished){
        _view.frame=CGRectMake(0, 0, 50, 50);
        
    }];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
