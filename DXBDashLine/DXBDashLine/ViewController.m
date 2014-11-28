//
//  ViewController.m
//  DXBDashLine
//
//  Created by iXiaobo on 14-11-28.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import "ViewController.h"
#import "MYView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageView1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 100, 320, 20)];
    imageView1.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:imageView1];
    
  //  CAShapeLayer *_border;
    
//    _border = [CAShapeLayer layer];
//    // _border.strokeColor = [UIColor colorWithRed:67/255.0f green:37/255.0f blue:83/255.0f alpha:1].CGColor;
//    _border.strokeColor = [UIColor redColor].CGColor;
//    _border.fillColor = ([UIColor redColor]).CGColor;
//    _border.lineDashPattern = @[@4, @2];
//    [imageView1.layer addSublayer:_border];
    
    UIGraphicsBeginImageContext(imageView1.frame.size);   //开始画线
    [imageView1.image drawInRect:CGRectMake(0, 0, imageView1.frame.size.width, imageView1.frame.size.height)];
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);  //设置线条终点形状
    
    
    CGFloat lengths[] = {10,20};
    CGContextRef line = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(line, [UIColor redColor].CGColor);
    
    CGContextSetLineDash(line, 0, lengths, 2);  //画虚线
    CGContextMoveToPoint(line, 0.0, 20.0);    //开始画线
    CGContextAddLineToPoint(line, 310.0, 20.0);
    CGContextStrokePath(line);
    imageView1.image = UIGraphicsGetImageFromCurrentImageContext();
////
    MYView *view =[[MYView alloc] initWithFrame:CGRectMake(10, 200, 320, 20)];
    [self.view addSubview:view];

//    CAShapeLayer *_border;
//    _border.strokeColor = [UIColor redColor].CGColor;
//    _border.path = [UIBezierPath bezierPathWithRect:view.bounds].CGPath;
//    _border.frame = view.bounds;
//    [view.layer addSublayer:_border];
    
//    UIView *myView = [[UIView alloc]initWithFrame:CGRectMake(0, 200, 320, 20)];
//    [self.view addSubview:myView];
//    
//    
//    UIGraphicsBeginImageContext(myView.frame.size);   //开始画线
//    [myView drawInRect:CGRectMake(0, 0, myView.frame.size.width, myView.frame.size.height)];
//    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);  //设置线条终点形状
//    
//    
//    CGFloat lengths1[] = {10,20};
//    CGContextRef line1 = UIGraphicsGetCurrentContext();
//    CGContextSetStrokeColorWithColor(line, [UIColor redColor].CGColor);
//    
//    CGContextSetLineDash(line, 0, lengths1, 2);  //画虚线
//    CGContextMoveToPoint(line, 0.0, 20.0);    //开始画线
//    CGContextAddLineToPoint(line, 310.0, 20.0);
//    CGContextStrokePath(line);
//    myView.image = UIGraphicsGetImageFromCurrentImageContext();
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
