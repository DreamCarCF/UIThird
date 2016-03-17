//
//  ViewController.m
//  ChangePicture
//
//  Created by qianfeng on 15/7/29.
//  Copyright (c) 2015年 cfboon.org. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *_imageView;
    NSInteger _count;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  _imageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 20, 380,self.view.frame.size.height-100 )];
    UIImage *image=[UIImage imageNamed:@"1.jpg"];
    [_imageView setImage:image];
    [self.view addSubview:_imageView];
    _count=1;
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(10, self.view.frame.size.height-80, 100, 70);
    button.backgroundColor=[UIColor yellowColor];
    [button setTitle:@"上一张" forState:UIControlStateNormal];
    [button setTintColor:[UIColor blackColor]];
    [button addTarget:self action:@selector(before:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
   UIButton *button1=[UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame=CGRectMake(250, self.view.frame.size.height-80, 100, 70);
    button1.backgroundColor=[UIColor yellowColor];
    [button1 setTitle:@"下一张" forState:UIControlStateNormal];
    [button1 setTintColor:[UIColor blackColor]];
    [button1 addTarget:self action:@selector(after:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    
}
-(void)before:(UIButton*)button
{
    _count--;
    if (_count<1) {
        _count=4;
    }
    
    _imageView.image=[UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",_count]];
    
}
-(void)after:(UIButton*)button
{
    
    _count++;
    if (_count>4) {
        _count=1;
    }
    _imageView.image=[UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",_count]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
