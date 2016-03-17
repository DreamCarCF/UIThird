//
//  ViewController.m
//  HandWithAacion
//
//  Created by qianfeng on 15/7/29.
//  Copyright (c) 2015年 cfboon.org. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
#if 0
    //点击手势
    //创建一个手势，并且设置好手势触发的事件；
    UITapGestureRecognizer* tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(ges)];
    //将手势添加到视图之上
//    UITapGestureRecognizer   是 UIGestureRecognizerd的子类；

    //双击，手势才响应；
    tap.numberOfTapsRequired=2;
    [self.view addGestureRecognizer:tap];
#endif
#if 0
    //缩放手势。两指操作；
    UIPinchGestureRecognizer *pin=[[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(ges)];
    [self.view addGestureRecognizer:pin];
#endif
#if 0
    //旋转手势
    //两根手指进行旋转
    UIRotationGestureRecognizer *rotation=[[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(ges)];
    [self.view addGestureRecognizer:rotation];

#endif
#if 0
    //滑动手势,快速滑动；
    UISwipeGestureRecognizer *swip=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(ges)];
    //滑动方向
/*
 UISwipeGestureRecognizerDirectionRight //从左往右
 UISwipeGestureRecognizerDirectionLeft  //从右往左
 UISwipeGestureRecognizerDirectionUp    //从下往上
 UISwipeGestureRecognizerDirectionDown //从上往下

 */
    swip.direction=UISwipeGestureRecognizerDirectionUp;
    [self.view addGestureRecognizer:swip];
#endif
#if 0
    //拖动手势
    UIPanGestureRecognizer *pan=[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(ges)];
    [self.view addGestureRecognizer:pan];
#endif
    //长按手势
    UILongPressGestureRecognizer *longpress=[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(ges)];
    //默认长按时间为0.5秒
    longpress.minimumPressDuration=0.5;    //设置长按时间；
    [self.view addGestureRecognizer:longpress];
    
    //视图userInteractionEnabled  属性决定是否响应手势；
    self.view.userInteractionEnabled = YES ; //即响应手势
                                            //  NO  即不响应手势；
    //   1.   UILabel和UIImageView的useInteractionEnabled默认是NO；
    //   2.   视图的hidden = YES 也无法触发手势；
    //   3.   如果父视图的userInteractionEnabled为NO，那么他的子视图无法响应手势
    
    
    
    
    
}
-(void)ges
{
    self.view.backgroundColor=[UIColor  colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1.0];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
