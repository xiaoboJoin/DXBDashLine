//
//  MYView.m
//  DXBDashLine
//
//  Created by iXiaobo on 14-11-28.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import "MYView.h"

@implementation MYView
+ (Class) layerClass
{
    return [CAShapeLayer class];
}


//
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
//        CAShapeLayer *_border;
//        
//        _border = [CAShapeLayer layer];
//        // _border.strokeColor = [UIColor colorWithRed:67/255.0f green:37/255.0f blue:83/255.0f alpha:1].CGColor;
//        _border.strokeColor = [UIColor redColor].CGColor;
//        _border.fillColor = ([UIColor redColor]).CGColor;
//        _border.lineDashPattern = @[@4, @2];
//        [self.layer addSublayer:_border];
//        self.backgroundColor = [UIColor redColor];
//        self.alpha = 0;
//        //Round corners
//        [[self layer] setCornerRadius:8.f];
//        [[self layer] setMasksToBounds:YES];
//        //Border
//        CAShapeLayer *shapeLayer_ = [CAShapeLayer layer] ;
//        
//        CGMutablePathRef path = CGPathCreateMutable();
//        CGPathAddRect(path, NULL, frame);
//        shapeLayer_.path = path;
//        CGPathRelease(path);
//        shapeLayer_.backgroundColor = [[UIColor clearColor] CGColor];
//        shapeLayer_.frame = frame;
//        shapeLayer_.position = self.center;
//        
//        [shapeLayer_ setValue:[NSNumber numberWithBool:NO] forKey:@"isCircle"];
//        shapeLayer_.fillColor = [[UIColor blueColor] CGColor];
//        shapeLayer_.strokeColor = [[UIColor blackColor] CGColor];
//        shapeLayer_.lineWidth = 4.;
//        shapeLayer_.lineDashPattern = [NSArray arrayWithObjects:[NSNumber numberWithInt:8], [NSNumber numberWithInt:8], nil];
//        shapeLayer_.lineCap = kCALineCapRound;
//
//        [self.layer addSublayer:shapeLayer_];
        CAShapeLayer *shapeLayer = [CAShapeLayer layer];
        [shapeLayer setBounds:self.bounds];
        [shapeLayer setPosition:self.center];
        [shapeLayer setFillColor:[[UIColor clearColor] CGColor]];
        [shapeLayer setStrokeColor:[[UIColor greenColor] CGColor]];
        [shapeLayer setLineWidth:1.0f];
        [shapeLayer setLineJoin:kCALineJoinRound];
        [shapeLayer setLineDashPattern:
         [NSArray arrayWithObjects:[NSNumber numberWithInt:5],
          [NSNumber numberWithInt:3],nil]];
        
        // Setup the path
//        CGMutablePathRef path = CGPathCreateMutable();
//        CGPathMoveToPoint(path, NULL, 10, 10);
//        CGPathAddLineToPoint(path, NULL, 100,100);
        
        [shapeLayer setPath:[UIBezierPath bezierPathWithRect:self.bounds].CGPath];
       // CGPathRelease(path);
        
        [[self layer] addSublayer:shapeLayer];
        
    }
    
    return self;
}
//
//-(void)awakeFromNib
//{
//    CAShapeLayer *_border;
//    
//    _border = [CAShapeLayer layer];
//    // _border.strokeColor = [UIColor colorWithRed:67/255.0f green:37/255.0f blue:83/255.0f alpha:1].CGColor;
//    _border.strokeColor = [UIColor redColor].CGColor;
//    _border.fillColor = ([UIColor redColor]).CGColor;
//    _border.lineDashPattern = @[@4, @2];
//    [self.layer addSublayer:_border];
//}

// Only override drawRect: if you perform custom drawing.
 //An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
////    // Drawing code
////    CGFloat dashPattern[]= {3.0, 2};
////    
////    context =UIGraphicsGetCurrentContext();
////    CGContextSetRGBStrokeColor(context, 1.0, 1.0, 1.0, 1.0);
////    // And draw with a blue fill color
////    CGContextSetRGBFillColor(context, 0.0, 0.0, 1.0, 1.0);
////    // Draw them with a 2.0 stroke width so they are a bit more visible.
////    CGContextSetLineWidth(context, 4.0);
////    CGContextSetLineDash(context, 0.0, dashPattern, 2);
////    
////    CGContextAddRect(context, self.bounds);
////    
////    CGContextStrokePath(context);
////    
////    
////    // Close the path
////    CGContextClosePath(context);
////    // Fill & stroke the path
////    CGContextDrawPath(context, kCGPathFillStroke);
//}


@end
