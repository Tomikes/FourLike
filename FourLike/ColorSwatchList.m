//
//  ColorSwatchList.m
//  FourLike
//
//  Created by apple on 15/8/18.
//  Copyright (c) 2015年 Tomikes. All rights reserved.
//

#import "ColorSwatchList.h"

#import "ColorSwatch.h"
#import "Colors.h"

@interface ColorSwatchList ()

@property (strong, readwrite, nonatomic) NSArray *colorSwatches;

@end

@implementation ColorSwatchList

//工厂方法调用标准方法初始化一个类对象

+ (instancetype)ColorSwatchList {
    return [[[self class] alloc] initWithPlistNamed:@"ColorList"];
}

- (instancetype)initWithPlistNamed:(NSString *)plistName {
    self = [super init];
    if (self) {
        self.colorSwatches = [self loadSwatchesFromPlistNamed:plistName];
    }
    return self;
    
}

- (NSArray *)loadSwatchesFromPlistNamed:(NSString *)plistNmae {
    //文件路径
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:plistNmae ofType:@"plist"];
    //plist里面是一个字典
    NSDictionary *listDic =[NSDictionary dictionaryWithContentsOfFile:plistPath];
    
    //如果取值出错
    if (!listDic) {
        return nil;
    }
     NSMutableArray *swatchList = [NSMutableArray array];
    
    [listDic enumerateKeysAndObjectsUsingBlock:^(NSString *colorName, NSString *colorHexString, BOOL *stop) {
        UIColor *color = [UIColor colorFromHexString:colorHexString];
        // Create the swatch
        ColorSwatch *swatch = [ColorSwatch colorSwatchWithColor:color name:colorName];
        [swatchList addObject:swatch];
    }];
    
    return [listDic copy];
}

@end
