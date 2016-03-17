//
//  ViewController.m
//  SimpleMovie
//
//  Created by 曹丰 on 15/7/29.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    view1.backgroundColor=[UIColor redColor];
    view1.alpha=0.5;     //设置视图view1的透明度，取值范围0.0-1.0，数值越小越透明；
//    view1.center=CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);   //设置视图的中心点

    [self.view addSubview:view1];
#if 0
    //----------------------------------动画--------------------------------------------------
    [UIView beginAnimations:nil context:nil];   //开始动画；

    [UIView setAnimationDuration:3.0];          //设置动画持续时间；
    
    //动画内容
    
     view1.center=CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    view1.backgroundColor =[UIColor cyanColor];
    //提交动画
    [UIView commitAnimations];
#endif
    
    //------------------第二种动画方式----------------------
    //animateWithDuration     动画持续时间
    //animations              动画内容
    //completion              动画完成后执行的方法
    
    
    [UIView animateWithDuration:1.0 animations:^{
    
        view1.center=CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
        view1.backgroundColor=[UIColor cyanColor];
    
    }completion:^(BOOL finished){
    
    //动画执行完毕之后，让视图回到原来位置；
        view1.frame=CGRectMake(0, 0, 100, 100);
    
    
    }];
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
