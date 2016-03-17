//
//  ViewController.m
//  TaptoBig
//
//  Created by qianfeng on 15/7/29.
//  Copyright (c) 2015年 cfboon.org. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    CGRect _oldFrame;
    UIView *_fatherView;
    UIImageView *_imageView;
    UIImage *_image;
    NSInteger _count;
    NSInteger _picture;
    NSInteger _q;
    UIImageView *app;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _count=1;
    _picture=1;
    _q=1;
    for(int i=0 ;i<2;i++)
    {
        for (int j=0; j<2; j++) {
    
    _fatherView=[[UIView alloc]initWithFrame:CGRectMake(20+190*j, 20+190*i, 150, 150)];
    [self.view addSubview:_fatherView];
  _imageView=[[UIImageView alloc]init];
    _imageView.frame=CGRectMake(0, 0, 150, 150);
    _imageView.backgroundColor=[UIColor yellowColor];
    _image=[UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",_picture]];
            _picture++;
    _imageView.image=_image;
     
            
            [_fatherView addSubview:_imageView];
            _imageView.tag=100+_q;
            _q++;
            
            self.view.userInteractionEnabled = YES;

            UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(big:)];
            
            
            tap.view.tag=(int)_imageView.image;
            
            
    [_fatherView addGestureRecognizer:tap];
    

            
            
            
            
            
            
        }
    }
}
-(void)big:(UITapGestureRecognizer*)tap
{
   
    _count++;
    if (_count%2==0) {
        
                
//        _imageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",_picture]]];
                
                
//        _picture++;
//                [_fatherView addSubview:_imageView];
       
        app  = _imageView;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
   
  tap.app.image.frame =CGRectMake(0,0, 375,667);
     [UIView commitAnimations];
        
          
    }else
    {
        
        UITapGestureRecognizer *closetap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(small:)];
        [self.view addGestureRecognizer:closetap];
        self.view.userInteractionEnabled = YES;
    }
    
}
-(void)small:(id)sender
{
    
    
    
    
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    _imageView.frame=CGRectMake(0,0, 150,150);
    [UIView commitAnimations];

    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
