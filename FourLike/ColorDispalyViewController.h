//
//  ColorDispalyViewController.h
//  FourLike
//
//  Created by apple on 15/8/18.
//  Copyright (c) 2015年 Tomikes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorSwatchDelegate.h"

@class ColorSwatch;

@interface ColorDispalyViewController : UIViewController <ColorSwatchDelegate> //执行协议，这是代理人，接受值的

@property (strong, nonatomic) ColorSwatch *colorSwatch;



@end
