//
//  ViewController.m
//  简单动画
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
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    view1.backgroundColor = [UIColor redColor];
    
    //设置视图的透明度, 取值范围0.0-1.0,数值越小越透明
    view1.alpha = 1.0;
    
    //设置视图的中心点
//    view1.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    
    [self.view addSubview:view1];
    
    
    //动画.
#if 0
    //开始动画
    [UIView beginAnimations:nil context:nil];
    //设置动画持续时间
    [UIView setAnimationDuration:1.0];
    
    //-------------------------------------
    //动画内容
    view1.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    view1.backgroundColor = [UIColor cyanColor];
    //-------------------------------------
    
    //提交动画
    [UIView commitAnimations];
#endif
    
    //第二种动画方式
    // animateWithDuration  动画持续时间
    // animations           动画内容
    // completion           动画完成后执行的方法
    [UIView animateWithDuration:2.0 animations:^{
        
        view1.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        view1.backgroundColor = [UIColor cyanColor];
        
    } completion:^(BOOL finished) {
        
        //动画执行完毕,让视图归位
        view1.frame = CGRectMake(0, 0, 100, 100);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
