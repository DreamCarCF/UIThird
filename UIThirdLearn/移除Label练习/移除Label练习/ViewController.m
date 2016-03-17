//
//  ViewController.m
//  移除Label练习
//
//  Created by liuyuecheng on 15/7/29.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    for (int i =0; i<3; i++)
    {
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 20+i*40, 100, 30)];
        label.backgroundColor  = [UIColor yellowColor];
        label.text = @"label";
        [self.view addSubview:label];
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        button.frame = CGRectMake(20, 200+i*40, 100, 30);
        [button setTitle:@"button" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor redColor];
        [self.view addSubview:button];
    }
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(20, 400, 100, 30);
    [button setTitle:@"移除Label" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(deleteLabel) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)deleteLabel
{
    //先取到所有的子视图
//    NSArray *subViewArray = self.view.subviews;
    
    for ( UIView *view in self.view.subviews)
    {
        //因为label和button都是继承制UIView,所以可以这样枚举
        //如果是label则删除
        if ([view isKindOfClass:[UILabel class]])
        {
            [view removeFromSuperview];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
