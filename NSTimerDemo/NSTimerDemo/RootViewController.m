//
//  RootViewController.m
//  NSTimerDemo
//
//  Created by 曹丰 on 15/7/29.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
{
    NSInteger _count;
    NSTimer * _timer;
}
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Nistmer    定时器。
    //作用是，每隔一段时间，运行一个方法；
    //scheduledTimerWithTimeInterval 时长，以秒为单位；
    //target   给谁添加一个事件；
    //selector  事件体；
    //userInfo  用户参数；
    //repeats    是否重复；
   _timer=[NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(run:) userInfo:@"hello" repeats:YES];
    }
//定时器跑的内容
-(void)run:(NSTimer*)timer
{
    //拿到timer带的参数也就是userIfo；
    NSLog(@"urerIfon==%@",timer.userInfo);
    
    NSLog(@"我是一个定时器！");
    //每隔3秒钟，让_count加一次；
    _count +=3;
    NSLog(@"_count==%ld",_count);
    
    //如果_count等于21得时候，停掉定时器；
    
    if (_count==21) {
        
        //判断定时器是否有效；返回BOOL值；————YES,NO；
        
        if ([timer isValid]) {
            
            [timer invalidate];         //定时器停止；
        }
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
