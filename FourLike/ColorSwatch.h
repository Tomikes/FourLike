//
//  ColorSwatch.h
//  FourLike
//
//  Created by apple on 15/8/18.
//  Copyright (c) 2015年 Tomikes. All rights reserved.
//

@import Foundation;
@import UIKit;

@interface ColorSwatch : NSObject

/*
 A string repre color name
 
 */
@property (strong, nonatomic, readonly) NSString *ColorName;

/*
 displaying color
 */
@property (strong, nonatomic, readonly) UIColor *color;

@property (readonly, nonatomic) NSString *hexString;
@property (readonly, nonatomic) NSString *rgbString;
@property (readonly, nonatomic) NSString *cmykString;
@property (readonly, nonatomic) NSString *hsbString;
@property (readonly, nonatomic) NSString *cielabString;

/*
 工厂方法创建colorSwatch “＋”
 @param color  这个颜色参数是swatch即将展现的
 @param name    这个参数是展现的颜色
 */
+ (instancetype)colorSwatchWithColor: (UIColor *)color name:(NSString *)name;

/*
 标准初始化方法  “－”
 */

- (instancetype)initWithColor:(UIColor *)color name:(NSString *)name NS_DESIGNATED_INITIALIZER;

- (NSArray *)relatedColors;

@end
