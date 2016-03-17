//
//  ViewController.m
//  UIviewRelation
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
    
   // UIView 其实就像书本一样，如果在一个view之上，再来另一个view1，view1就会将原来的view遮挡起来；
    
    //最后添加的视图，在最上面，之前的view会被盖住；
    
    UIView *fatherView=[[UIView alloc]initWithFrame:CGRectMake(20, 20, 200, 200)];
    
    fatherView.backgroundColor=[UIColor redColor];
    
    [self.view addSubview:fatherView];
    
    //再创建一个子视图
    
    UIView*sonView=[[UIView alloc]initWithFrame:CGRectMake(20, 20, 200, 200)];
    
    sonView.backgroundColor=[UIColor blueColor];
    sonView.tag=100;
    [fatherView addSubview:sonView];
    
    //通过addSubview的方式来添加视图，那么fatherView就是父视图，sonView就是子视图；
    
    //sonView是fatheView的子视图；  fatherView就是sonView的父视图；
//    NSLog(@"fatherView==%@",fatherView);
    
    
    //sonView.superview取到它的父视图；
//    NSLog(@"sonView的父视图是%@",sonView.superview);
    
    UIView *purpleView=[[UIView alloc]initWithFrame:CGRectMake(40, 40, 200, 200)];
    purpleView.backgroundColor=[UIColor purpleColor];
    purpleView.tag=101;
    [fatherView addSubview:purpleView];
    
    UIView *greenView=[[UIView alloc]initWithFrame:CGRectMake(60, 60, 200, 200)];
    greenView.backgroundColor=[UIColor greenColor];
    greenView.tag=102;
    
    [fatherView addSubview:greenView];
    //获取子视图
    NSArray *subViewArray= fatherView.subviews;
    NSLog(@"subViewArray==%@",subViewArray);
    //最后添加的视图，会在数组的末尾；
    
    
    //使用快速枚举，将每一个子视图都取出来；
    for (UIView *view in subViewArray) {
        NSLog(@"tag=%ld",view.tag);
        //将父视图上的每个子视图一一删除；
//        [view removeFromSuperview];
    }

//父视图将子视图sonView放到最前端，
    
    [fatherView bringSubviewToFront:sonView];
//父视图将子视图sonView送到最后端；
    [fatherView sendSubviewToBack:greenView];

//父视图将子视图的位置进行交换
    [fatherView exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    //在指定位置插入一个视图-----------方法一
    UIView*orangeView=[[UIView alloc]initWithFrame:CGRectMake(80, 80, 200, 200)];
    orangeView.backgroundColor=[UIColor orangeColor];
    
#if 0
    [fatherView insertSubview:orangeView atIndex:1];     //将orangeView插到数组1的位置
#endif
 
#if 0
    [fatherView insertSubview:orangeView aboveSubview:sonView];   ////在sonView之上，插入orangView
#endif
    [fatherView insertSubview:orangeView belowSubview:purpleView];   //在·purpleView之下，插入orangeView；
#if 0
    
//删除视图，是子视图的方法，即自己删除自己；
    [greenView removeFromSuperview];
//一旦父视图移除，他所有的子视图都会被移除；
    [fatherView removeFromSuperview];

#endif
    [fatherView sendSubviewToBack:sonView];
    
//设置子视图可不可以超出父视图边界；
//YES    不可以超出边界；
    //NO   可以超出边界
    fatherView.clipsToBounds = YES ; //即不可以超出父视图边界，多出部分会被切掉；
    fatherView.clipsToBounds = NO  ;
    //隐藏一个视图
    //YES 隐藏
    //NO  不隐藏 (系统默认hidden 值是NO)
    orangeView.hidden = YES ; //即隐藏orangeView视图；
    
    orangeView.hidden = NO ;
    //判断这个视图是不是某个视图的子视图；
   if ([orangeView isDescendantOfView:fatherView])
   {
       
       NSLog(@"是");
   }else
   {
       
       NSLog(@"不是");
   }
    
    //判断orangeView 是不是UIview这个类的；
        if([orangeView isKindOfClass:[UIView class]])
        {
            
            NSLog(@"是UIView");
    }else
    {
        
        NSLog(@"不是UIView");
        
    }


//视图之间的关系；父与子；叠加的关系；


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
