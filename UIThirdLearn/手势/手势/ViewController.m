//
//  ViewController.m
//  手势
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
#if 0
    //点击手势
    //创建一个手势,并且设置好手势触发事件
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(ges)];
    //将手势添加到视图之上
    //UITapGestureRecognizer 是UIGestureRecognizerd的子类
    
    //双击,手势才响应
    tap.numberOfTapsRequired = 2;
    [self.view addGestureRecognizer:tap];
    
#endif
    
#if 0
    //缩放手势
    //缩放:两指操作
    //按住option键,出现两个手指
    UIPinchGestureRecognizer *pin = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(ges)];
    [self.view addGestureRecognizer:pin];
#endif
    
#if 1
    //旋转手势
    //两根手指进行旋转
    UIRotationGestureRecognizer *rotation = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(ges)];
    [self.view addGestureRecognizer:rotation];
#endif
    
#if 0
    //滑动手势.需要快速移动才会触发
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(ges)];
    
    //滑动方向
    //UISwipeGestureRecognizerDirectionRight  //从左往后
    //UISwipeGestureRecognizerDirectionLeft   //从右往左
    //UISwipeGestureRecognizerDirectionUp     //从下往上
    //UISwipeGestureRecognizerDirectionDown   //从上往下
    swipe.direction =  UISwipeGestureRecognizerDirectionUp;
    [self.view addGestureRecognizer:swipe];
#endif
    
#if 0
    //拖动手势
    //无论快速或者慢慢移动,都会触发
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(ges)];
    [self.view addGestureRecognizer:pan];
#endif
#if 0
    //长按手势
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(ges)];
    //默认长按时间是0.5秒
    //设置长按时间
    longPress.minimumPressDuration = 0.5;
    [self.view addGestureRecognizer:longPress];
    
    //视图userInteractionEnabled属性决定是否响应手势
    //yes代表响应
    //NO代表不响应
#endif
    self.view.userInteractionEnabled = YES;

    //1.UILabel和UIImageView的userInteractionEnabled默认是NO
    //2.视图的hidden = YES也无法触发手势
    //3.如果父视图的userInteractionEnabled为NO,那么它的子视图无法响应手势
}

//每次触发手势,就修改self.view的背景颜色
- (void)ges
{
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1.0];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
