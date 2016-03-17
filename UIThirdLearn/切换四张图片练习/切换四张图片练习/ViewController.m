//
//  ViewController.m
//  切换四张图片练习
//
//  Created by liuyuecheng on 15/7/29.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *_imageView;
    NSInteger _count;
    NSArray *_array;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height-60)];
    _imageView.image = [UIImage imageNamed:@"1.jpg"];
    [self.view addSubview:_imageView];
    
    _count = 1;
    
    UIButton *preButton = [UIButton buttonWithType:UIButtonTypeSystem];
    preButton.frame = CGRectMake(20, self.view.frame.size.height-40, 100, 40);
    [preButton setTitle:@"上一张" forState:UIControlStateNormal];
    preButton.backgroundColor = [UIColor yellowColor];
    //如果你需要修改这个按钮的外观,或者获取这个按钮的title,就带参.
    [preButton addTarget:self action:@selector(pre) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:preButton];
    
    
    UIButton *nextButton = [UIButton buttonWithType:UIButtonTypeSystem];
    nextButton.frame = CGRectMake(250, self.view.frame.size.height-40, 100, 40);
    [nextButton setTitle:@"下一张" forState:UIControlStateNormal];
    nextButton.backgroundColor = [UIColor yellowColor];
    [nextButton addTarget:self action:@selector(next) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextButton];
    
    _array = @[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg"];
}
- (void)pre
{
    _count --;
    if (_count <1)
    {
        _count = _array.count;
    }
    _imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",_count]];
}

- (void)next
{
    //点击下一张,_count++
    _count ++;
    
    if (_count >_array.count)
    {
        _count = 1;
    }
    
    _imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",_count]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
