//
//  ViewController.m
//  UIimageView
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
   
    //UIImageView 用来显示图片的视图；
    UIImageView *imageView =[[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 150,200)];

    
    
    imageView.backgroundColor=[UIColor yellowColor];
    UIImage *image=[UIImage imageNamed:@"3_selected.png"];
    //将image给imageview
    imageView.image=image;
    
    //设置显示模式，让图片不失真
    //contentMode  是UIView的一个属性；
   /*
    UIViewContentModeScaleToFill,         //默认，图片会拉伸来布满整个视图；
    UIViewContentModeScaleAspectFit,      // 图片不拉伸，并且不会超出视图边；
    
    UIViewContentModeScaleAspectFill,     // 图片不拉伸，但是会超出界面；
    */
    imageView.contentMode=UIViewContentModeScaleAspectFill;
    [self.view addSubview:imageView];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
