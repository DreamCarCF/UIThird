//
//  RootViewController.m
//  UIButton+Cal
//
//  Created by liuyuecheng on 15/7/29.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
{
    UILabel *_label1;//用来显示输入字符和结果
    UILabel *_label2;//用来显示运算符
    
    NSString *_operator1;//第一个操作数
    NSString *_operator2;//第二个操作数
    NSString *_operand;//运算符
}
@end

@implementation RootViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        _operator1 = @"";
        _operator2 = @"";
        _operand = @"";
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //这个label用来显示输入字符和计算结果
    _label1 = [[UILabel alloc]initWithFrame:CGRectMake(10, 20, 300, 30)];
    _label1.backgroundColor = [UIColor grayColor];
    _label1.textAlignment = NSTextAlignmentRight;
    [self.view addSubview:_label1];
    
    _label2 = [[UILabel alloc]initWithFrame:CGRectMake(10, 50, 300, 30)];
    _label2.textAlignment = NSTextAlignmentRight;
    _label2.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_label2];
    
    NSArray *titles1 = @[@"MC",@"M+",@"M-",@"MR",@"清除"];
    for (int i=0; i<titles1.count; i++)
    {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        button.frame = CGRectMake(10+(52+10)*i, 90, 52, 52);
        button.backgroundColor = [UIColor grayColor];
        button.layer.cornerRadius = 10;
        [button setTitle:titles1[i] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    
    NSArray *titles2 = @[@"7",@"8",@"9",@"+",
                         @"4",@"5",@"6",@"-",
                         @"1",@"2",@"3",@"*",
                         @"0",@".",@"=",@"/",];
    for (int i=0; i<4; i++)
    {
        for (int j= 0; j<4; j++)
        {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
            button.frame = CGRectMake(10+j*(67.5+10), 152+i*(52+10), 67.5, 52);
            button.backgroundColor = [UIColor grayColor];
            button.layer.cornerRadius = 10;
            [button setTitle:titles2[i*4+j] forState:UIControlStateNormal];
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:button];
        }
    }
    
}

- (void)buttonClick:(UIButton *)button
{
    //M开头的按钮,不处理
    if ([button.currentTitle hasPrefix:@"M"])
    {
        return;
    }
    
    if ([button.currentTitle isEqualToString:@"清除"])
    {
        //如果是清除按钮,清空
        _label1.text = @"";
        _label2.text = @"";
        _operand = @"";
        _operator1 = @"";
        _operator2 = @"";
        return;
    }
    
    if([self isOpreand:button.currentTitle])
    {
        //如果是操作符,直接显示
        _label2.text = button.currentTitle;
        
        //输入的是运算符
        //如果是运算符.那我们得看是第一次的运算符,还是第二次的运算符
        if (_operand.length >0)
        {
            //不是第一次点击运算符
            float op1 = _operator1.floatValue;
            float op2 = _operator2.floatValue;
            float result = 0.0;
            //把结果运算出来
            if ([_operand isEqualToString:@"+"])
            {
                result = op1+op2;
            }else if ([_operand isEqualToString:@"-"]) {
                result = op1-op2;
            }else if ([_operand isEqualToString:@"*"]) {
                result = op1*op2;
            }else if ([_operand isEqualToString:@"/"]) {
                result = op1/op2;
            }
            
            //算完之后,赋给_operator1,以便后面用来显示
            _operator1 = [NSString stringWithFormat:@"%0.2f",result];
            //清空第二个操作数,便于下次输入
            _operator2 = @"";
            
            if ([button.currentTitle isEqualToString:@"="])
            {
                //点击=,操作符清空
                _operand = @"";
                _label2.text = @"";
            }else
            {
                //如果点击的不是=,则吧操作符保存起来便于下次计算
                _operand = button.currentTitle;
            }
            
            //计算完毕之后,显示出来
            _label1.text = _operator1;
            
        }else
        {
            //是第一次点击运算符
            _operand = button.currentTitle;
        }
        
    }else
    {
        //输入的不是运算符
        //如果存在运算符,则输入的是第二个操作数.如果不存在运算符,则输入的是第一个操作数
        if (_operand.length >0)
        {
            //进行第二个操作数的拼接
            _operator2 = [_operator2 stringByAppendingString:button.currentTitle];
            
        }else
        {
            
            //进行第一个操作数的拼接

            _operator1 = [_operator1 stringByAppendingString:button.currentTitle];
            
        }
    }
 
    //如果第二个操作数长度大于0.就显示第二个操作数
    if (_operator2.length >0)
    {
        
        _label1.text = _operator2;
    }else
    {
        _label1.text = _operator1;
    }
}

//判断当前输入的是不是运算符
- (BOOL)isOpreand:(NSString *)string
{
    if ([string isEqualToString:@"+"]) {
        return YES;
    }else if ([string isEqualToString:@"-"])
    {
        return YES;
    }else if ([string isEqualToString:@"*"])
    {
        return YES;
    }else if ([string isEqualToString:@"/"])
    {
        return YES;
    }else if ([string isEqualToString:@"="])
    {
        return YES;
    }
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
