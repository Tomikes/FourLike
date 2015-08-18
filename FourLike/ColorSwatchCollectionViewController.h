//
//  ColorSwatchCollectionViewController.h
//  FourLike
//
//  Created by apple on 15/8/18.
//  Copyright (c) 2015年 Tomikes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorSwatchDelegate.h"

//这个view是代理的上司，是他要传值

@interface ColorSwatchCollectionViewController : UICollectionViewController

@property (weak, nonatomic) id<ColorSwatchDelegate> swatchDelegate;

@end
