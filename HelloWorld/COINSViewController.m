//
//  COINSViewController.m
//  HelloWorld
//
//  Created by 山田悠加 on 2013/09/06.
//  Copyright (c) 2013年 COINS Project AID. All rights reserved.
//

#import "COINSViewController.h"

@interface COINSViewController ()

@end

@implementation COINSViewController {
    int i;
    UILabel *label;
    UIImageView *imageView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Hello World" forState:UIControlStateNormal];
    button.frame = CGRectMake(10, 200, 300, 44);
    [button addTarget:self action:@selector(changeText) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    label = [[UILabel alloc]initWithFrame:CGRectMake(0, 500, 600, 100)];
    label.text = @"Sample";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor =[ UIColor redColor];
    [self.view addSubview:label];

    i = 0;
    label.text = [NSString stringWithFormat:@"%d", i];
    
    imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"IMG_1220.jpg"  ]];
    imageView.frame = CGRectMake(10, 10, 300, 200);
    [self.view addSubview:imageView];
    imageView.hidden = YES;
    
    
    
    
}

- (void)changeText
{
    i++;
    label.text = [NSString stringWithFormat:@"%d", i];
    if(i == 10) {
        imageView.hidden = NO;
    } else {
        imageView.hidden = YES;
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
