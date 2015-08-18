//
//  ColorDispalyViewController.m
//  FourLike
//
//  Created by apple on 15/8/18.
//  Copyright (c) 2015年 Tomikes. All rights reserved.
//

#import "ColorDispalyViewController.h"

@interface ColorDispalyViewController ()

@end

@implementation ColorDispalyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - <RWColorSwatchSelectionDelegate>
- (void)didSelectColorSwatch:(ColorSwatch *)swatch sender:(id)sender {
    // Update our swatch property
    self.colorSwatch = swatch;
}

@end
