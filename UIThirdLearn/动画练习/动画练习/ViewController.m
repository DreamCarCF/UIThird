//
//  ViewController.m
//  动画练习
//
//  Created by liuyuecheng on 15/7/29.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *_view;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    _view.backgroundColor = [UIColor redColor];
    _view.layer.cornerRadius = 10;
    [self.view addSubview:_view];
    
    //起一个定时器,每隔3秒调一次.
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(run) userInfo:nil repeats:YES];
}
- (void)run
{
    [UIView animateWithDuration:2.0 animations:^{
        
        _view.frame = CGRectMake(100, 100, _view.frame.size.width, _view.frame.size.height);
        _view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1.0];
        
    } completion:^(BOOL finished) {
        
        _view.frame = CGRectMake(0, 0, _view.frame.size.width, _view.frame.size.height);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
