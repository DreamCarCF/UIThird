//
//  ViewController.m
//  NewCalculatorFromTeacher
//
//  Created by 曹丰 on 15/7/29.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UILabel *_label1; //用来显示输入字符和结果
    UILabel *_label2; //用来显示运算符
    
    NSString *_operator1; //第一个操作数；
    NSString *_operator2; //第二个操作数；
    NSString *_operand;   //运算符；
}
@end

@implementation ViewController
-(instancetype)init
{
    
    self=[super init];
    if (self) {
        _operator1=@"";
        _operator2=@"";
        _operand=@"";
    
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    //这个label用来显示输入字符和计算结果
    _label1=[[UILabel alloc]initWithFrame:CGRectMake(10, 20, 300, 30)];
    _label1.backgroundColor=[UIColor grayColor];
    _label1.layer.cornerRadius=10.0;
    _label1.textAlignment=NSTextAlignmentRight;
    [self.view addSubview:_label1];
    
    _label2=[[UILabel alloc]initWithFrame:CGRectMake(10, 50, 300, 30)];
    _label2.backgroundColor=[UIColor grayColor];
    _label2.layer.cornerRadius=10.0;
    _label2.textAlignment=NSTextAlignmentRight;
    [self.view addSubview:_label2];
    NSArray *titles1=@[@"MC",@"M+",@"M-",@"MR",@"清除"];
    for (int i=0; i<titles1.count; i++) {
        UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
        button.frame=CGRectMake(10+62*i, 90, 52, 52);
        button.backgroundColor=[UIColor grayColor];
        button.layer.cornerRadius=10.0;
        [button setTitle:titles1[i] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
