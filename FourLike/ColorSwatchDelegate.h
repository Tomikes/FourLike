//
//  ColorSwatchDelegate.h
//  FourLike
//
//  Created by apple on 15/8/18.
//  Copyright (c) 2015年 Tomikes. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ColorSwatch;

@protocol ColorSwatchDelegate <NSObject>

@required

- (void)didSelectColorSwatch:(ColorSwatch *)swatch sender:(id)sender;

@end