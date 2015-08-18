//
//  ColorSwatchList.h
//  FourLike
//
//  Created by apple on 15/8/18.
//  Copyright (c) 2015年 Tomikes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColorSwatchList : NSObject

@property (strong, readonly, nonatomic) NSArray *colorSwatches;

/*
 Factory method to create a list using the default PList
 */
+ (instancetype)ColorSwatchList;

- (instancetype)initWithPlistNamed:(NSString *)plistName NS_DESIGNATED_INITIALIZER;

@end
