//
//  ViewController.m
//  Geasture
//
//  Created by Student on 17/10/16.
//  Copyright © 2016 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //dd
    
    _lbl1.userInteractionEnabled=YES;
    UITapGestureRecognizer *tap= [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
    tap.numberOfTapsRequired=2;
    [_lbl1 addGestureRecognizer:tap];
    
    _lbl2.userInteractionEnabled=YES;
    UILongPressGestureRecognizer *longpress=[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longclick)];
    [_lbl2 addGestureRecognizer:longpress];
   
    
    _ImageView.userInteractionEnabled=YES;
   _s1=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s1.direction=UISwipeGestureRecognizerDirectionUp;
    [_ImageView addGestureRecognizer:_s1];
    
    _s2=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s2.direction=UISwipeGestureRecognizerDirectionDown;
    [_ImageView addGestureRecognizer:_s2];
    
    _s3=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s3.direction=UISwipeGestureRecognizerDirectionLeft;
    [_ImageView addGestureRecognizer:_s3];
    
    _s4=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s4.direction=UISwipeGestureRecognizerDirectionRight;
    [_ImageView addGestureRecognizer:_s4];
    
}
-(void)swipe:(UISwipeGestureRecognizer *)sender
{
    if(sender==_s1)
        _ImageView.image=[UIImage imageNamed:@"1"];
    
    else if (sender==_s2)
        _ImageView.image=[UIImage imageNamed:@"2"];
    
    else if (sender==_s3)
        _ImageView.image=[UIImage imageNamed:@"3"];
    
    else
        _ImageView.image=[UIImage imageNamed:@"4"];
}

-(void)tap
{
    self.view.backgroundColor=[UIColor blueColor];
}
-(void)longclick
{
    self.view.backgroundColor=[UIColor orangeColor];
}


//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    UITouch *touch=[touches anyObject];
//    CGPoint point= [touch locationInView:self.view];
//    NSLog(@"start at   %.f   %.f",point.x, point.y);
//}

//-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    UITouch *touch=[touches anyObject];
//    CGPoint point= [touch locationInView:self.view];
//    NSLog(@"Moving at   %.f   %.f",point.x, point.y);
//}


//-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event

//{
//    UITouch *touch=[touches anyObject];
//    CGPoint point= [touch locationInView:self.view];
//    NSLog(@"Ended at   %.f   %.f",point.x, point.y);
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
