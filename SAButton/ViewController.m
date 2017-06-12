//
//  ViewController.m
//  SAButton
//
//  Created by 张炯 on 2017/6/12.
//  Copyright © 2017年 张炯. All rights reserved.
//

#import "ViewController.h"
#import "SAButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    SAButton *button = [SAButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width-240)*0.5, 100, 240, 240);
    [button setTitle:@"DeveloperiMichael" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"111"] forState:UIControlStateNormal];
    button.margin = 10;
    button.locationType = 0;
    button.backgroundColor = [UIColor brownColor];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)buttonAction:(SAButton *)button {
    button.locationType = (button.locationType+1)%8;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
