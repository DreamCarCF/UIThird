//
//  ViewController.m
//  UIView层次关系
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
    
    //UIView其实就像书本一样.如果在一个view之上,再盖另一个view,就会将原来的view遮挡起来
    //最后添加的视图,在最上面.前面的view会盖住
    
    UIView *fatherView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 200,200)];
    fatherView.backgroundColor = [UIColor redColor];
    [self.view addSubview:fatherView];
    
    UIView *sonView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 200, 200)];
    sonView.backgroundColor = [UIColor blueColor];
    sonView.tag = 100;
    [fatherView addSubview:sonView];
    
    //通过addSubview的方式来添加视图.那么fatherView就是父视图,sonview就是子视图
    
    //sonview是fatherview的子视图
    //fatherView就是sonView的父视图
    NSLog(@"fatherView==%@",fatherView);
    
    //sonView.superview 取到它的父视图
    NSLog(@"sonview的父视图是%@",sonView.superview);
    
    UIView *purpleView = [[UIView alloc]initWithFrame:CGRectMake(40, 40, 200, 200)];
    purpleView.backgroundColor = [UIColor purpleColor];
    purpleView.tag = 101;
    [fatherView addSubview:purpleView];
    
    UIView *greenView = [[UIView alloc]initWithFrame:CGRectMake(60, 60, 200, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    greenView.tag = 102;
    [fatherView addSubview:greenView];
    
    //获取子视图
    NSArray *subViewArray = fatherView.subviews;
    NSLog(@"subViewArray==%@",subViewArray);
    //最后添加的视图,会在数组的最末尾
    
    //使用快速枚举,将每一个子视图都取出来
    for (UIView *view in subViewArray)
    {
        NSLog(@"tag==%ld",view.tag);
        //将父视图上的每个子视图都删掉
//        [view removeFromSuperview];
    }
    
    //将子视图放到最上面
    //父视图将子视图放到最上面
    [fatherView bringSubviewToFront:sonView];
    
    //父视图将子视图送到最下面
    [fatherView sendSubviewToBack:greenView];
    
    //父视图将子视图的位置进行交换
    //这里取得子数组下标的方式
    [fatherView exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    
    
    //插入一个视图
    UIView *orangeView = [[UIView alloc]initWithFrame:CGRectMake(80, 80, 200, 200)];
    orangeView.backgroundColor = [UIColor orangeColor];
    
    //将orangeView插到数组1的位置
//    [fatherView insertSubview:orangeView atIndex:1];
    
    //在sonView之上,插入orangeView
//    [fatherView insertSubview:orangeView aboveSubview:sonView];
    
    //在purpleView之下,插入orangeView
    [fatherView insertSubview:orangeView belowSubview:purpleView];
    
    //删除视图.是子视图的方法.自己要求从父视图之上移除
//    [greenView removeFromSuperview];
    
    //一旦父视图移除.它所有的子视图都会被移除
//    [fatherView removeFromSuperview];
    
    [fatherView sendSubviewToBack:sonView];
    //设置允不允许子视图超出父视图边界,超出父视图的部分,会被切掉
    //YES  不允许超出边界
    //NO   允许超出边界
    fatherView.clipsToBounds = NO;
    
    //隐藏一个视图.视图被隐藏,会看不见.但是不是销毁
    //YES  隐藏
    //NO   不隐藏
    orangeView.hidden = NO;
    
    //判断这个视图是不是某个视图的子视图
    //看看orangeView是不是fatherView得子视图
    if([orangeView isDescendantOfView:fatherView])
    {
        NSLog(@"是");
    }else
    {
        NSLog(@"不是");
    }
    
    //判断orangeView 是不是UIView
    if([orangeView isKindOfClass:[UIView class]])
    {
        NSLog(@"是UIView");
    }else
    {
        NSLog(@"不是UIView");
    }
    
    //视图之间的关系:  父与子关系,叠加关系
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
