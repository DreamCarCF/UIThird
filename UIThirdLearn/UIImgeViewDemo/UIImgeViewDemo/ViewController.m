//
//  ViewController.m
//  UIImgeViewDemo
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
    
    //UIImageView  用来显示图片的视图
    //UIImageView  :UIView
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 150, 150)];
    imageView.backgroundColor = [UIColor yellowColor];
    
    UIImage *image = [UIImage imageNamed:@"1.jpg"];
    
    //将image给imageView
    imageView.image = image;
    
    //设置显示模式,让图片不失真
    //contentMode  是UIView得一个属性
    //UIViewContentModeScaleToFill,    //默认.图片会拉伸来布满整个视图
    //UIViewContentModeScaleAspectFit, //图片不拉伸.并且图片不会超出视图边界
    //UIViewContentModeScaleAspectFill,//图片不拉伸,但是会超出视图边界
    
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
