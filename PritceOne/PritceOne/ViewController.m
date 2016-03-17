//
//  ViewController.m
//  PritceOne
//
//  Created by 曹丰 on 15/7/29.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

{
    UIView*_fatherView;
    UILabel*_label;
    UIButton*_button;
    NSMutableArray *_arrM;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _fatherView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 667)];
    _fatherView.backgroundColor=[UIColor grayColor];
    [self.view addSubview:_fatherView];
    
    
    for(int i=0;i<3;i++)
    {
        
        
        _label=[[UILabel alloc]init];
        _label.frame=CGRectMake(30, 20+60*i, 50, 50);
        _label.backgroundColor=[UIColor whiteColor];
        [_arrM addObject:_label];
        
        _button=[UIButton buttonWithType:UIButtonTypeSystem];
        _button.frame=CGRectMake(30, 220+60*i, 50, 50);
        _button.backgroundColor=[UIColor redColor];
        
        
        
        [_fatherView addSubview:_label];
        
        [_fatherView addSubview:_button];
    }
    UIButton *button1=[[UIButton alloc]init];
    button1.frame=CGRectMake(30, 430, 40, 40);

    [button1 setTitle:@"删" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(delete:) forControlEvents:UIControlEventTouchUpInside];
    [_fatherView addSubview:button1];
    
}
-(void)delete:(UIButton*)button
{
    NSArray*subView= _fatherView.subviews;
    
   if ([button.currentTitle isEqualToString:@"删"])
   {
       
       for (UIView *view in subView) {
           if ([view isKindOfClass:[UILabel class]]) {
               [view removeFromSuperview];
           }
       }
    
       
   }
    
}
    
    
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
